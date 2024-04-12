part of 'api.dart';

class _PostsApi {
  final GhostContentAPI _api;

  _PostsApi(this._api);

  /// Browse posts without pagination
  /// [formats] can be 'html' and 'plaintext'
  /// [include] can be 'authors' and 'tags'
  /// [filter] can only be used if no [filters] are provided
  /// Returns a list of list of [GhostPost]
  Future<List<GhostPost>> browse({
    int? page,
    int? limit,
    String? order,
    List<String>? include,
    List<String>? fields,
    List<String>? formats,
    List<String>? filters,
    String? filter,
  }) async {
    final json = await _api.send('/posts', <String, dynamic>{
      'page': page,
      'limit': limit,
      'order': order,
      'include': include,
      'fields': fields,
      'formats': formats,
      'filter': filters ?? filter,
    });

    return _map(json, 'posts', (e) => GhostPost.fromJson(e));
  }

  /// Browse posts with pagination info
  /// [formats] can be 'html' and 'plaintext'
  /// [include] can be 'authors' and 'tags'
  /// [filter] can only be used if no [filters] are provided
  /// Returns a [GhostPostResponse] with a list of posts and pagination info
  Future<GhostPostResponse> browseWithPaginationInfo({
    int? page,
    int? limit,
    String? order,
    List<String>? include,
    List<String>? fields,
    List<String>? formats,
    List<String>? filters,
    String? filter,
  }) async {
    final json = await _api.send('/posts', <String, dynamic>{
      'page': page,
      'limit': limit,
      'order': order,
      'include': include,
      'fields': fields,
      'formats': formats,
      'filter': filters ?? filter,
    });

    final posts = _map(json, 'posts', GhostPost.fromJson);
    final pagination = PaginationInfo.fromJson(
        json['meta']['pagination'] as Map<String, dynamic>);

    return (paginationInfo: pagination, posts: posts);
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

    return _map(json, 'posts', (e) => GhostPost.fromJson(e)).first;
  }
}

@JsonSerializable()
class PaginationInfo {
  final int? page;
  final int? limit;
  final int? pages;
  final int? total;
  final int? next;
  final int? prev;

  PaginationInfo({
    required this.page,
    required this.limit,
    required this.pages,
    required this.total,
    required this.next,
    required this.prev,
  });

  @override
  toString() {
    return 'PaginationInfo(limit: $limit, pages: $pages, total: $total, currentPage: $page,  next: $next, prev: $prev)';
  }

  factory PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationInfoToJson(this);
}

@JsonSerializable()
class GhostPost {
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
  final String? visibility;
  final double? readingTime;
  final bool? access;
  final bool? comments;
  final String? featureImageAlt;
  final String? featureImageCaption;

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
    this.visibility,
    this.readingTime,
    this.access,
    this.comments,
    this.featureImageAlt,
    this.featureImageCaption,
  });

  factory GhostPost.fromJson(Map<String, dynamic> json) =>
      _$GhostPostFromJson(json);

  Map<String, dynamic> toJson() => _$GhostPostToJson(this);
}

enum GhostPostVisibility {
  public,
  membersOnly,
  paidMembersOnly;

  static GhostPostVisibility fromVisibility(String visibility) {
    switch (visibility) {
      case 'public':
        return GhostPostVisibility.public;
      case 'members':
        return GhostPostVisibility.membersOnly;
      case 'paid':
        return GhostPostVisibility.paidMembersOnly;
      default:
        return GhostPostVisibility.public;
    }
  }

  String toVisibility() {
    switch (this) {
      case GhostPostVisibility.public:
        return 'public';
      case GhostPostVisibility.membersOnly:
        return 'members';
      case GhostPostVisibility.paidMembersOnly:
        return 'paid';
    }
  }
}
