part of 'api.dart';

class _TagsApi {
  final GhostContentAPI _api;

  _TagsApi(this._api);

  /// [include] can be 'count.post'
  Future<List<GhostTag>> browse({
    int page,
    int limit,
    String order,
    List<String> include,
    List<String> fields,
    List<String> filters,
  }) {
    throw UnimplementedError();
  }

  /// [include] can be 'count.post'
  Future<GhostTag> read({
    String id,
    String slug,
    List<String> include,
    List<String> fields,
  }) {
    throw UnimplementedError();
  }
}

class GhostTag {
  final String slug;
  final String id;
  final String name;
  final String description;
  final String featureImage;
  final String visibility;
  final String metaTitle;
  final String metaDescription;
  final String ogImage;
  final String ogTitle;
  final String ogDescription;
  final String twitterImage;
  final String twitterTitle;
  final String twitterDescription;
  final String codeinjectionHead;
  final String codeinjectionFoot;
  final String canonicalUrl;
  final String accentColor;
  final String url;

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

  factory GhostTag.fromJson(Map<String, dynamic> json) => GhostTag(
        slug: json['slug'],
        id: json['id'],
        name: json['name'],
        description: json['description'],
        featureImage: json['feature_image'],
        visibility: json['visibility'],
        metaTitle: json['meta_title'],
        metaDescription: json['meta_description'],
        ogImage: json['og_image'],
        ogTitle: json['og_title'],
        ogDescription: json['og_description'],
        twitterImage: json['twitter_image'],
        twitterTitle: json['twitter_title'],
        twitterDescription: json['twitter_description'],
        codeinjectionHead: json['codeinjection_head'],
        codeinjectionFoot: json['codeinjection_foot'],
        canonicalUrl: json['canonical_url'],
        accentColor: json['accent_color'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'slug': slug,
        'id': id,
        'name': name,
        'description': description,
        'feature_image': featureImage,
        'visibility': visibility,
        'meta_title': metaTitle,
        'meta_description': metaDescription,
        'og_image': ogImage,
        'og_title': ogTitle,
        'og_description': ogDescription,
        'twitter_image': twitterImage,
        'twitter_title': twitterTitle,
        'twitter_description': twitterDescription,
        'codeinjection_head': codeinjectionHead,
        'codeinjection_foot': codeinjectionFoot,
        'canonical_url': canonicalUrl,
        'accent_color': accentColor,
        'url': url,
      };
}
