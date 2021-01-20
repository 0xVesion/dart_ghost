part of 'api.dart';

class _PagesApi {
  final GhostContentAPI _api;

  _PagesApi(this._api);

  /// [formats] can be 'html' and 'plaintext'
  /// [include] can be 'authors' and 'tags'
  Future<List<GhostPage>> browse({
    int page,
    int limit,
    String order,
    List<String> include,
    List<String> fields,
    List<String> formats,
    List<String> filters,
  }) async {
    throw UnimplementedError();
  }

  /// [formats] can be 'html' and 'plaintext'
  /// [include] can be 'authors' and 'tags'
  Future<GhostPage> read({
    String id,
    String slug,
    List<String> include,
    List<String> fields,
    List<String> formats,
  }) {
    throw UnimplementedError();
  }
}

class GhostPage {}
