import 'package:google_maps_apis/src/new/model/place.dart';
import 'package:google_maps_apis/src/new/model/places_suggestions.dart';
import 'package:uuid/uuid.dart';

/// This class is used for Google Places API (New) Autocomplete / Details requests
///
/// Session tokens are user-generated strings (or objects) that track
/// Autocomplete (New) calls as sessions. Autocomplete (New) uses session tokens
/// to group the query and selection phases of a user autocomplete search into a
/// discrete session for billing purposes.
///
/// Users are responsible for creating session tokens for each session.
/// Session tokens must be URL- and filename-safe base64 strings. Users can
/// generate session tokens in any manner, although Google recommends using
/// version 4 universally unique identifiers (UUIDs) for session tokens.
///
/// The session begins with a call to Autocomplete (New), and concludes with a
/// call to Place Details (New) or Address Validation.
/// Each session can have multiple Autocomplete (New) queries, followed by one
/// request to Place Details (New) or Address Validation. The API key(s) used
/// for each request within a session must belong to the same Google Cloud Console
/// project.
///
/// ⭐️ Note: Session tokens cannot be exchanged between Places API endpoints and
/// Places API (New) or Address Validation endpoints. For example, Place Autocomplete
/// request can be followed by a Place Details request in the same session, but
/// it cannot be followed by a Place Details (New) request or an Address Validation
/// request in the same session.
///
/// ⭐️ Note: You can optionally omit the Autocomplete (New) session token from a
/// request. If the session token is omitted, each request is billed separately
/// and charges the Autocomplete – Per Request SKU.
///
/// Once a session has concluded, the token is no longer valid; your app must
/// generate a fresh token for each new session. If the sessionToken parameter is
/// omitted, or if you reuse a session token, the new session is charged as if
/// no session token was provided (each request is billed separately).
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-session-tokens
///
/// ============================================================================
///
/// Using this class, you can create a session token for Google Places API (New)
/// and use it for each Autocomplete request and Place Details request.
///
/// How to use:
/// 1. Initialize: final sessionToken = SessionTokenHandler();
/// 2. Use [sessionToken.token] on each Autocomplete session request:
///     final responseAutocomplete = await placesAPI.searchAutocomplete(
///             filter: AutocompleteSearchFilter(
///               input: input,
///               sessionToken: sessionToken.token,
///             ),
///           );
/// 3. Use [sessionToken.token] on final Place Details request:
///    final response = await placesAPI.getDetails(
///             id: placeId ?? '',
///             instanceFields: Place(
///               id: '',
///               displayName: LocalizedText(),
///             ),
///             filter: PlaceDetailsFilter(
///               sessionToken: token,
///             ),
///           );
/// 4. That's all.
///
/// Usage Notes:
/// - [sessionToken.token] has a TTL (Time To Live) of 2 minutes.
/// - Every time you call [sessionToken.token], it will increase the [used]
///   count (only for logging purposes) and will also generate a new token if
///   TTL expired.
/// - [sessionToken.refresh()] can be called to force a new token generation.
/// - [sessionToken.cacheSuggestions(text: text, data: data)] can be called to
///   cache the [PlacesSuggestions] data for a given [text].
/// - [sessionToken.suggestionsFromCache(text)] can be called to get any
///   [PlacesSuggestions] already in cache for a given [text].
/// - [sessionToken.cachePlaceDetails(id: placeId, data: data)] can be called to
///   cache the [Place] data for a given [placeId], this function will also refresh
///   the token as it assumes this [Place] is the result of a call to Place Details
///   after several calls to Autocomplete Search which means the session has already
///   concluded.
/// - [sessionToken.placeFromCache(placeId)] can be called to get any [Place]
///   already in cache for a given [placeId].
///
class SessionTokenHandler {
  late String _token;
  late DateTime _expiration;
  int _used = 0;

  final Map<String, PlacesSuggestions> _suggestionsCache = {};
  final Map<String, Place> _placeDetailsCache = {};

  SessionTokenHandler() {
    refresh();
  }

  void clearCache() {
    clearSuggestionsCache();
    clearPlaceDetailsCache();
  }

  void clearSuggestionsCache() {
    _suggestionsCache.clear();
  }

  void clearPlaceDetailsCache() {
    _placeDetailsCache.clear();
  }

  void refresh() {
    _token = const Uuid().v4();
    _expiration = DateTime.now().add(const Duration(minutes: 2));
    _used = 0;
  }

  String get token {
    if (isExpired) refresh();
    ++_used;
    return _token;
  }

  bool get isExpired => DateTime.now().isAfter(expiration);
  DateTime get expiration => _expiration;

  int get used => _used;

  /// Get a [PlacesSuggestions] from the cache if exists.
  PlacesSuggestions? suggestionsFromCache(String? text) =>
      _suggestionsCache[text];

  /// Add the [PlacesSuggestions] to the cache.
  void cacheSuggestions({
    required String? text,
    PlacesSuggestions? data,
  }) {
    if (text != null && data != null) {
      _suggestionsCache[text] = data;
    }
  }

  /// Get a [Place] from the cache if exists.
  Place? placeFromCache(String? placeId) => _placeDetailsCache[placeId];

  /// Add the [Place] to the cache and refresh the session [token] to be ready
  /// for use in a new search session.
  void cachePlaceDetails({
    required String? id,
    Place? data,
  }) {
    if (id != null && data != null) {
      _placeDetailsCache[id] = data;
    }
    refresh();
  }
}
