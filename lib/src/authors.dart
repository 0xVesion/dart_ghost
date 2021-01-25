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
    final json = await _api.send('/authors', <String, dynamic>{
      'page': page,
      'limit': limit,
      'order': order,
      'include': include,
      'fields': fields,
      'filters': filters,
    });

    return _map(json, 'authors', (e) => GhostAuthor.fromJson(e));
  }

  /// [include] can be 'count.post'
  Future<GhostAuthor> read({
    String id,
    String slug,
    List<String> include,
    List<String> fields,
  }) async {
    final json = await _api.send('/authors/${_idOrSlugPath(id, slug)}', <String, dynamic>{
      'include': include,
      'fields': fields,
    });

    return _map(json, 'authors', (e) => GhostAuthor.fromJson(e)).first;
  }
}

@JsonSerializable()
class GhostAuthor {
  final String slug;
  final String id;
  final String name;
  final String profileImage;
  final String coverImage;
  final String bio;
  final String website;
  final String location;
  final String facebook;
  final String twitter;
  final String metaTitle;
  final String metaDescription;
  final String url;

  GhostAuthor({
    this.slug,
    this.id,
    this.name,
    this.profileImage,
    this.coverImage,
    this.bio,
    this.website,
    this.location,
    this.facebook,
    this.twitter,
    this.metaTitle,
    this.metaDescription,
    this.url,
  });

  factory GhostAuthor.fromJson(Map<String, dynamic> json) => _$GhostAuthorFromJson(json);

  Map<String, dynamic> toJson() => _$GhostAuthorToJson(this);
}
