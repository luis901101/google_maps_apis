import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:google_maps_apis/src/new/base_api/rest_api.dart';
import 'package:google_maps_apis/src/new/model/error_info.dart';
import 'package:google_maps_apis/src/new/model/google_error_response.dart';
import 'package:google_maps_apis/src/new/model/google_http_response.dart';
import 'package:google_maps_apis/src/new/utils/callbacks.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:google_maps_apis/src/new/utils/map_utils.dart';
import 'package:http/http.dart' as http;
import 'package:retrofit/retrofit.dart';

abstract class RestAPIService<DataType extends Jsonable> {
  static const googleFieldMaskKey = 'X-Goog-FieldMask';
  static String bearer(String token) => 'Bearer $token';

  /// Base api url
  final String baseUrl;

  final void Function()? onInit;

  /// Generic Jsonable DataType to allow for parsing of JSON data
  final DataType? dataType;

  /// RestAPI instance to be used by the service
  final RestAPI restAPI;

  /// API Authorization Bearer token
  final String? token;

  /// Callback to asynchronously get API Authorization Bearer token
  final TokenCallback? tokenCallback;

  /// Timeout for requests.
  final Duration? connectTimeout;

  /// Timeout for receiving data.
  final Duration? receiveTimeout;

  /// Timeout for sending data, like when using stream upload or Tus protocol.
  final Duration? sendTimeout;

  /// API key to be used on requests
  final String? apiKey;

  /// Set this if you need control over http requests like validating certificates and so.
  /// Not supported on Web
  final HttpClient? httpClient;

  RestAPIService({
    RestAPI? restAPI,
    this.onInit,
    required this.baseUrl,
    this.dataType,
    this.token,
    TokenCallback? tokenCallback,
    this.apiKey,
    this.connectTimeout,
    this.receiveTimeout,
    this.sendTimeout,
    this.httpClient,
  })  : assert(
            (((token?.isNotEmpty ?? false) && tokenCallback == null) ||
                    ((token?.isEmpty ?? true) && tokenCallback != null)) ||
                (apiKey?.isNotEmpty ?? false),
            '\n\nA token or tokenCallback must be specified, only one of both.'
            '\nOtherwise an apiKey must be specified.'),
        tokenCallback =
            tokenCallback ??= (token == null ? null : (() async => token)),
        restAPI = restAPI ?? RestAPI() {
    _init();
  }

  void _init() {
    restAPI.init(
      httpClient: httpClient,
      apiUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      apiKey: apiKey,
      tokenCallback: tokenCallback,
    );
  }

  GoogleHTTPResponse httpResponseToCustomHttpResponse(HttpResponse response) {
    dynamic body = response.data;
    return GoogleHTTPResponse(
        http.Response(
          '',
          response.response.statusCode ?? HttpStatus.notFound,
          headers: MapUtils.parseHeaders(response.response.headers) ?? {},
          isRedirect: response.response.isRedirect,
          request: http.Request(
            response.response.requestOptions.method,
            response.response.requestOptions.uri,
          ),
        ),
        body,
        extraData: response);
  }

  GoogleHTTPResponse dioErrorToCustomHttpResponse(dio.DioException error) {
    GoogleErrorResponse? googleErrorResponse;
    if (error.response?.data != null) {
      if (error.response?.data is GoogleErrorResponse) {
        googleErrorResponse = error.response?.data;
      } else if (error.response?.data is Map<String, dynamic>) {
        googleErrorResponse =
            GoogleErrorResponse.fromJson(error.response?.data);
      }
    }
    return GoogleHTTPResponse(
        http.Response(
          '',
          error.response?.statusCode ?? HttpStatus.notFound,
          headers: MapUtils.parseHeaders(error.response?.headers) ?? {},
          isRedirect: error.response?.isRedirect ?? false,
          request: http.Request(
            error.response?.requestOptions.method ?? HttpMethod.GET,
            error.response?.requestOptions.uri ?? Uri(),
          ),
        ),
        null,
        error: googleErrorResponse,
        extraData: error);
  }

  Future<GoogleHTTPResponse> getSaveResponse<ContainerDataTypeGeneric>(
      Future futureResponse) async {
    GoogleHTTPResponse response = GoogleHTTPResponse(
      http.Response('', HttpStatus.notFound),
      null,
    );

    try {
      final HttpResponse httpResponse = await futureResponse;
      response = httpResponseToCustomHttpResponse(httpResponse);
    } catch (e) {
      if (e is HttpResponse) {
        response = httpResponseToCustomHttpResponse(e);
      } else if (e is dio.DioException) {
        switch (e.type) {
          case dio.DioExceptionType.connectionTimeout:
          case dio.DioExceptionType.receiveTimeout:
          case dio.DioExceptionType.sendTimeout:
            throw TimeoutException(e.message);
          default:
        }
        if (e.error is Exception) throw e.error as Exception;
        response = dioErrorToCustomHttpResponse(e);
      } else {
        rethrow;
      }
    }
    return response;
  }

  Future<GoogleHTTPResponse<DataType>> parseResponse(
      Future futureResponse) async {
    return genericParseResponse(futureResponse, dataType: dataType);
  }

  Future<GoogleHTTPResponse<List<DataType>>> parseResponseAsList(
      Future futureResponse) async {
    return genericParseResponseAsList(futureResponse, dataType: dataType);
  }

  Future<GoogleHTTPResponse<DataTypeGeneric>>
      genericParseResponse<DataTypeGeneric>(Future futureResponse,
          {DataTypeGeneric? dataType}) async {
    GoogleHTTPResponse response = await getSaveResponse(futureResponse);
    try {
      DataTypeGeneric? dataTypeResult;
      dynamic body = response.body;

      if (body is DataTypeGeneric) {
        dataTypeResult = body;
      } else if (dataType is Jsonable) {
        if (body is Map<String, dynamic>) {
          dataTypeResult = dataType.fromJsonMap(body) as DataTypeGeneric?;
        } else if (body is String) {
          dataTypeResult = dataType.fromJsonString(body) as DataTypeGeneric?;
        }
      }
      return GoogleHTTPResponse<DataTypeGeneric>(
        response.base,
        dataTypeResult,
        error: response.error,
        extraData: response.extraData,
      );
    } catch (e) {
      String message = e.toString();
      print(e);
      return GoogleHTTPResponse<DataTypeGeneric>(
        http.Response(
          response.body?.toString() ?? '',
          Jsonable.jsonParserError,
          headers: response.base.headers,
          isRedirect: response.base.isRedirect,
          persistentConnection: response.base.persistentConnection,
          reasonPhrase: response.base.reasonPhrase,
          request: response.base.request,
        ),
        null,
        error: GoogleErrorResponse(
          error: ErrorInfo(
            message: message,
          ),
        ),
      );
    }
  }

  Future<GoogleHTTPResponse<List<DataTypeGeneric>>>
      genericParseResponseAsList<DataTypeGeneric extends Jsonable?>(
          Future futureResponse,
          {DataTypeGeneric? dataType}) async {
    GoogleHTTPResponse response = await getSaveResponse(futureResponse);
    try {
      List<DataTypeGeneric>? dataList;
      dynamic body = response.body;

      if (body is Map) {
        for (dynamic value in body.values) {
          if (value is List<dynamic>) {
            body = value;
            break;
          }
        }
      }

      if (body is List<DataTypeGeneric>) {
        dataList = body;
      } else if (dataType is Jsonable) {
        if (body is List<dynamic>) {
          dataList = dataType.fromJsonList(body) as List<DataTypeGeneric>?;
        } else if (body is String) {
          dataList = dataType.fromJsonString(body) as List<DataTypeGeneric>?;
        }
      }
      return GoogleHTTPResponse<List<DataTypeGeneric>>(
        response.base,
        dataList,
        error: response.error,
        extraData: response.extraData,
      );
    } catch (e) {
      String message = e.toString();
      print(e);
      return GoogleHTTPResponse<List<DataTypeGeneric>>(
        http.Response(
          response.body?.toString() ?? '',
          Jsonable.jsonParserError,
          headers: response.base.headers,
          isRedirect: response.base.isRedirect,
          persistentConnection: response.base.persistentConnection,
          reasonPhrase: response.base.reasonPhrase,
          request: response.base.request,
        ),
        null,
        error: GoogleErrorResponse(
          error: ErrorInfo(
            message: message,
          ),
        ),
      );
    }
  }

  void dispose() {
    restAPI.dispose();
  }
}
