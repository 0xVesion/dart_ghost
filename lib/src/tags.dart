part of 'api.dart';

class _TagsApi {
  final GhostContentAPI _api;

  _TagsApi(this._api);

  /// [include] can be 'count.post'
  Future<List<GhostTag>> browse({
    int page,
    int limit,
    String order,
    List<String> include,
    List<String> fields,
    List<String> filters,
  }) {
    throw UnimplementedError();
  }

  /// [include] can be 'count.post'
  Future<GhostTag> read({
    String id,
    String slug,
    List<String> include,
    List<String> fields,
  }) {
    throw UnimplementedError();
  }
}

class GhostTag {}
