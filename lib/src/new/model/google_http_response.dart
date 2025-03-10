import 'dart:typed_data';

import 'package:google_maps_apis/src/new/model/google_error_response.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// It is a [http.BaseResponse] wrapper representing a response of a network call.
///
/// ```dart
/// @Get(path: '/something')
/// Future<CHResponse> fetchSomething();
/// ```
///
/// ```dart
/// @Get(path: '/items/{id}')
/// Future<CHResponse<Item>> fetchItem();
/// ```
@immutable
class GoogleHTTPResponse<BodyType> {
  /// The [http.BaseResponse] from `package:http` that this [GoogleHTTPResponse] wraps.
  final http.BaseResponse base;

  /// The body of the response after conversion by Chopper
  /// See [Converter] for more on body conversion.
  ///
  /// Can be null if [isSuccessful] is not true.
  /// Use [error] to get error body.
  final BodyType? body;

  /// The body of the response if [isSuccessful] is false.
  final GoogleErrorResponse? error;

  final dynamic extraData;

  const GoogleHTTPResponse(this.base, this.body, {this.error, this.extraData});

  /// Makes a copy of this Response, replacing original values with the given ones.
  /// This method can also alter the type of the response body.
  GoogleHTTPResponse<NewBodyType> copyWith<NewBodyType>({
    http.BaseResponse? base,
    NewBodyType? body,
    GoogleErrorResponse? error,
  }) =>
      GoogleHTTPResponse<NewBodyType>(
        base ?? this.base,
        body ?? (this.body as NewBodyType),
        error: error ?? this.error,
      );

  /// The HTTP status code of the response.
  int get statusCode => base.statusCode;

  /// Whether the network call was successful or not.
  ///
  /// `true` if the result code of the network call is >= 200 && <300
  /// If false, [error] will contain the converted error response body.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;

  /// HTTP headers of the response.
  Map<String, String> get headers => base.headers;

  /// Returns the response body as bytes ([Uint8List]) provided the network
  /// call was successful, else this will be `null`.
  Uint8List get bodyBytes =>
      base is http.Response ? (base as http.Response).bodyBytes : Uint8List(0);

  /// Returns the response body as a String provided the network
  /// call was successful, else this will be `null`.
  String get bodyString =>
      base is http.Response ? (base as http.Response).body : '';
}
