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

class GhostPost {
  final String slug;
  final String id;
  final String uuid;
  final String title;
  final String html;
  final String commentId;
  final String featureImage;
  final bool featured;
  final bool page;
  final String metaTitle;
  final String metaDescription;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishedAt;
  final String customExcerpt;
  final String codeinjectionHead;
  final String codeinjectionFoot;
  final String ogImage;
  final String ogTitle;
  final String ogDescription;
  final String twitterImage;
  final String twitterTitle;
  final String twitterDescription;
  final String customTemplate;
  final String canonicalUrl;
  final List<GhostAuthor> authors;
  final List<GhostTag> tags;
  final GhostAuthor primaryAuthor;
  final GhostTag primaryTag;
  final String url;
  final String excerpt;

  GhostPost({
    this.slug,
    this.id,
    this.uuid,
    this.title,
    this.html,
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

  factory GhostPost.fromJson(Map<String, dynamic> json) => GhostPost(
        slug: json['slug'],
        id: json['id'],
        uuid: json['uuid'],
        title: json['title'],
        html: json['html'],
        commentId: json['comment_id'],
        featureImage: json['feature_image'],
        featured: json['featured'],
        page: json['page'],
        metaTitle: json['meta_title'],
        metaDescription: json['meta_description'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        publishedAt: DateTime.parse(json['published_at']),
        customExcerpt: json['custom_excerpt'],
        codeinjectionHead: json['codeinjection_head'],
        codeinjectionFoot: json['codeinjection_foot'],
        ogImage: json['og_image'],
        ogTitle: json['og_title'],
        ogDescription: json['og_description'],
        twitterImage: json['twitter_image'],
        twitterTitle: json['twitter_title'],
        twitterDescription: json['twitter_description'],
        customTemplate: json['custom_template'],
        canonicalUrl: json['canonical_url'],
        authors: List<GhostAuthor>.from(
            json['authors'].map((x) => GhostAuthor.fromJson(x))),
        tags:
            List<GhostTag>.from(json['tags'].map((x) => GhostTag.fromJson(x))),
        primaryAuthor: GhostAuthor.fromJson(json['primary_author']),
        primaryTag: GhostTag.fromJson(json['primary_tag']),
        url: json['url'],
        excerpt: json['excerpt'],
      );

  Map<String, dynamic> toJson() => {
        'slug': slug,
        'id': id,
        'uuid': uuid,
        'title': title,
        'html': html,
        'comment_id': commentId,
        'feature_image': featureImage,
        'featured': featured,
        'page': page,
        'meta_title': metaTitle,
        'meta_description': metaDescription,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
        'published_at': publishedAt.toIso8601String(),
        'custom_excerpt': customExcerpt,
        'codeinjection_head': codeinjectionHead,
        'codeinjection_foot': codeinjectionFoot,
        'og_image': ogImage,
        'og_title': ogTitle,
        'og_description': ogDescription,
        'twitter_image': twitterImage,
        'twitter_title': twitterTitle,
        'twitter_description': twitterDescription,
        'custom_template': customTemplate,
        'canonical_url': canonicalUrl,
        'authors': List<dynamic>.from(authors.map((x) => x.toJson())),
        'tags': List<dynamic>.from(tags.map((x) => x.toJson())),
        'primary_author': primaryAuthor.toJson(),
        'primary_tag': primaryTag.toJson(),
        'url': url,
        'excerpt': excerpt,
      };
}
