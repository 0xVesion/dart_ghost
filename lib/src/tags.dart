part of 'api.dart';

class _TagsApi {

  _TagsApi(this._api);
  final GhostContentAPI _api;

  /// [include] can be 'count.post'
  Future<List<GhostTag>> browse({
    int? page,
    int? limit,
    String? order,
    List<String>? include,
    List<String>? fields,
    List<String>? filters,
  }) async {
    final json = await _api.send('/tags', <String, dynamic>{
      'page': page,
      'limit': limit,
      'order': order,
      'include': include,
      'fields': fields,
      'filters': filters,
    });

    return _map(json, 'tags', GhostTag.fromJson);
  }

  /// [include] can be 'count.post'
  Future<GhostTag> read({
    String? id,
    String? slug,
    List<String>? include,
    List<String>? fields,
  }) async {
    final json =
        await _api.send('/tags/${_idOrSlugPath(id, slug)}', <String, dynamic>{
      'include': include,
      'fields': fields,
    });

    return _map(json, 'tags', GhostTag.fromJson).first;
  }
}

@JsonSerializable()
class GhostTag {

  GhostTag({
    this.slug,
    this.id,
    this.name,
    this.description,
    this.featureImage,
    this.visibility,
    this.metaTitle,
    this.metaDescription,
    this.ogImage,
    this.ogTitle,
    this.ogDescription,
    this.twitterImage,
    this.twitterTitle,
    this.twitterDescription,
    this.codeinjectionHead,
    this.codeinjectionFoot,
    this.canonicalUrl,
    this.accentColor,
    this.url,
  });

  factory GhostTag.fromJson(Map<String, dynamic> json) =>
      _$GhostTagFromJson(json);
  final String? slug;
  final String? id;
  final String? name;
  final String? description;
  final String? featureImage;
  final String? visibility;
  final String? metaTitle;
  final String? metaDescription;
  final String? ogImage;
  final String? ogTitle;
  final String? ogDescription;
  final String? twitterImage;
  final String? twitterTitle;
  final String? twitterDescription;
  final String? codeinjectionHead;
  final String? codeinjectionFoot;
  final String? canonicalUrl;
  final String? accentColor;
  final String? url;

  Map<String, dynamic> toJson() => _$GhostTagToJson(this);
}
