part of 'api.dart';

class _AuthorsApi {
  final GhostContentAPI _api;

  _AuthorsApi(this._api);

  /// [include] can be 'count.post'
  Future<List<GhostAuthor>> browse({
    int page,
    int limit,
    String order,
    List<String> include,
    List<String> fields,
    List<String> filters,
  }) async {
    throw UnimplementedError();
  }

  /// [include] can be 'count.post'
  Future<GhostAuthor> read({
    String id,
    String slug,
    List<String> include,
    List<String> fields,
  }) async {
    throw UnimplementedError();
  }
}

class GhostAuthor {}
