part of 'api.dart';

class _PostsApi {
  final GhostContentAPI _api;

  _PostsApi(this._api);

  Future<List<GhostPost>> browse({int limit = 25, String include}) async {
    throw UnimplementedError();
  }

  Future<GhostPost> read({String id, String slug, List<String> formats}) async {
    throw UnimplementedError();
  }
}

class GhostPost {}
