part of 'api.dart';

class _PagesApi {
  final GhostContentAPI _api;

  _PagesApi(this._api);

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
    final json = await _api.send('/pages', {
      'page': page,
      'limit': limit,
      'order': order,
      'include': include,
      'fields': fields,
      'formats': formats,
      'filters': filters,
    });

    return _map(json, 'pages', (e) => GhostPost.fromJson(e));
  }

  /// [formats] can be 'html' and 'plaintext'
  /// [include] can be 'authors' and 'tags'
  Future<GhostPost> read({
    String id,
    String slug,
    List<String> include,
    List<String> fields,
    List<String> formats,
  }) async {
    final json = await _api.send('/pages/${_idOrSlugPath(id, slug)}', {
      'include': include,
      'fields': fields,
      'formats': formats,
    });

    return _map(json, 'pages', (e) => GhostPost.fromJson(e)).first;
  }
}
