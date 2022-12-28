part of 'api.dart';

class _PostsApi {

  _PostsApi(this._api);
  final GhostContentAPI _api;

  /// [formats] can be 'html' and 'plaintext'
  /// [include] can be 'authors' and 'tags'
  Future<List<GhostPost>> browse({
    int? page,
    int? limit,
    String? order,
    List<String>? include,
    List<String>? fields,
    List<String>? formats,
    List<String>? filters,
  }) async {
    final json = await _api.send('/posts', <String, dynamic>{
      'page': page,
      'limit': limit,
      'order': order,
      'include': include,
      'fields': fields,
      'formats': formats,
      'filters': filters,
    });

    return _map(json, 'posts', GhostPost.fromJson);
  }

  /// [formats] can be 'html' and 'plaintext'
  /// [include] can be 'authors' and 'tags'
  Future<GhostPost> read({
    String? id,
    String? slug,
    List<String>? formats,
    List<String>? include,
    List<String>? fields,
  }) async {
    final json =
        await _api.send('/posts/${_idOrSlugPath(id, slug)}', <String, dynamic>{
      'formats': formats,
      'include': include,
      'fields': fields,
    });

    return _map(json, 'posts', GhostPost.fromJson).first;
  }
}

@JsonSerializable()
class GhostPost {

  GhostPost({
    this.slug,
    this.id,
    this.uuid,
    this.title,
    this.html,
    this.plaintext,
    this.commentId,
    this.featureImage,
    this.featured,
    this.page,
    this.metaTitle,
    this.metaDescription,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.customExcerpt,
    this.codeinjectionHead,
    this.codeinjectionFoot,
    this.ogImage,
    this.ogTitle,
    this.ogDescription,
    this.twitterImage,
    this.twitterTitle,
    this.twitterDescription,
    this.customTemplate,
    this.canonicalUrl,
    this.authors,
    this.tags,
    this.primaryAuthor,
    this.primaryTag,
    this.url,
    this.excerpt,
  });

  factory GhostPost.fromJson(Map<String, dynamic> json) =>
      _$GhostPostFromJson(json);
  final String? slug;
  final String? id;
  final String? uuid;
  final String? title;
  final String? html;
  final String? plaintext;
  final String? commentId;
  final String? featureImage;
  final bool? featured;
  final bool? page;
  final String? metaTitle;
  final String? metaDescription;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? publishedAt;
  final String? customExcerpt;
  final String? codeinjectionHead;
  final String? codeinjectionFoot;
  final String? ogImage;
  final String? ogTitle;
  final String? ogDescription;
  final String? twitterImage;
  final String? twitterTitle;
  final String? twitterDescription;
  final String? customTemplate;
  final String? canonicalUrl;
  final List<GhostAuthor>? authors;
  final List<GhostTag>? tags;
  final GhostAuthor? primaryAuthor;
  final GhostTag? primaryTag;
  final String? url;
  final String? excerpt;

  Map<String, dynamic> toJson() => _$GhostPostToJson(this);
}
