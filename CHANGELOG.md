The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Types of changes
- `Added` for new features.
- `Changed` for changes in existing functionality.
- `Deprecated` for soon-to-be removed features.
- `Removed` for now removed features.
- `Fixed` for any bug fixes.
- `Security` in case of vulnerabilities.

## 1.0.0+1
### Added
- Added missing fields to `PlaceDetails`.

### Changed
- `GoogleResponseStatus` updated with `ResponseStatus` enum according to a pending TODO. _(this is a breaking change with respect to [google_maps_webservice](https://pub.dev/packages/google_maps_webservice))_
- Enum Json serialization updated to avoid unnecessary boilerplate code.
- Changed several required fields as optional. _(this is a breaking change with respect to [google_maps_webservice](https://pub.dev/packages/google_maps_webservice))_

### Fixed
- `TravelMode` query param bug fixed on directions api request. _(Google requires the `mode` query param to be lower case but then when parsing `travel_mode` from json response it should be treated as upper case)_