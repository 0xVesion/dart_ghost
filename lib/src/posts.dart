part of 'api.dart';

class _PostsApi {
  final GhostContentAPI _api;

  _PostsApi(this._api);

  /// [formats] can be 'html' and 'plaintext'
  /// [include] can be 'authors' and 'tags'
  Future<List<GhostPost>> browse({
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
  Future<GhostPost> read({
    String id,
    String slug,
    List<String> formats,
    List<String> include,
    List<String> fields,
  }) async {
    throw UnimplementedError();
  }
}

class GhostPost {}
