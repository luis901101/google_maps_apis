import 'package:google_maps_apis/src/new/filter/base_filter.dart';

/// Base filter for session based requests.
abstract class BaseSessionFilter<T extends Object> extends BaseFilter<T> {
  /// A string which identifies an Autocomplete session for billing purposes.
  /// Must be a URL and filename safe base64 string with at most 36 ASCII
  /// characters in length. Otherwise an INVALID_ARGUMENT error is returned.
  ///
  /// The session begins when the user starts typing a query, and concludes when
  /// they select a place and a call to Place Details or Address Validation is made.
  /// Each session can have multiple queries, followed by one Place Details or
  /// Address Validation request. The credentials used for each request within a
  /// session must belong to the same Google Cloud Console project. Once a session
  /// has concluded, the token is no longer valid; your app must generate a fresh
  /// token for each session. If the sessionToken parameter is omitted, or if you
  /// reuse a session token, the session is charged as if no session token was
  /// provided (each request is billed separately).
  ///
  /// We recommend the following guidelines:
  ///
  /// - Use session tokens for all Place Autocomplete calls.
  /// - Generate a fresh token for each session. Using a version 4 UUID is recommended.
  /// - Ensure that the credentials used for all Place Autocomplete, Place Details,
  ///   and Address Validation requests within a session belong to the same Cloud Console project.
  /// - Be sure to pass a unique session token for each new session. Using the
  ///   same token for more than one session will result in each request being billed individually.
  final String? sessionToken;

  BaseSessionFilter({super.languageCode, super.regionCode, this.sessionToken});
}
