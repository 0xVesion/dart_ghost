// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GhostAuthor _$GhostAuthorFromJson(Map<String, dynamic> json) {
  return GhostAuthor(
    slug: json['slug'] as String,
    id: json['id'] as String,
    name: json['name'] as String,
    profileImage: json['profileImage'] as String,
    coverImage: json['coverImage'] as String,
    bio: json['bio'] as String,
    website: json['website'] as String,
    location: json['location'] as String,
    facebook: json['facebook'] as String,
    twitter: json['twitter'] as String,
    metaTitle: json['metaTitle'] as String,
    metaDescription: json['metaDescription'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$GhostAuthorToJson(GhostAuthor instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'id': instance.id,
      'name': instance.name,
      'profileImage': instance.profileImage,
      'coverImage': instance.coverImage,
      'bio': instance.bio,
      'website': instance.website,
      'location': instance.location,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'url': instance.url,
    };

GhostPost _$GhostPostFromJson(Map<String, dynamic> json) {
  return GhostPost(
    slug: json['slug'] as String,
    id: json['id'] as String,
    uuid: json['uuid'] as String,
    title: json['title'] as String,
    html: json['html'] as String,
    commentId: json['commentId'] as String,
    featureImage: json['featureImage'] as String,
    featured: json['featured'] as bool,
    page: json['page'] as bool,
    metaTitle: json['metaTitle'] as String,
    metaDescription: json['metaDescription'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    publishedAt: json['publishedAt'] == null
        ? null
        : DateTime.parse(json['publishedAt'] as String),
    customExcerpt: json['customExcerpt'] as String,
    codeinjectionHead: json['codeinjectionHead'] as String,
    codeinjectionFoot: json['codeinjectionFoot'] as String,
    ogImage: json['ogImage'] as String,
    ogTitle: json['ogTitle'] as String,
    ogDescription: json['ogDescription'] as String,
    twitterImage: json['twitterImage'] as String,
    twitterTitle: json['twitterTitle'] as String,
    twitterDescription: json['twitterDescription'] as String,
    customTemplate: json['customTemplate'] as String,
    canonicalUrl: json['canonicalUrl'] as String,
    authors: (json['authors'] as List)
        ?.map((e) =>
            e == null ? null : GhostAuthor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : GhostTag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    primaryAuthor: json['primaryAuthor'] == null
        ? null
        : GhostAuthor.fromJson(json['primaryAuthor'] as Map<String, dynamic>),
    primaryTag: json['primaryTag'] == null
        ? null
        : GhostTag.fromJson(json['primaryTag'] as Map<String, dynamic>),
    url: json['url'] as String,
    excerpt: json['excerpt'] as String,
  );
}

Map<String, dynamic> _$GhostPostToJson(GhostPost instance) => <String, dynamic>{
      'slug': instance.slug,
      'id': instance.id,
      'uuid': instance.uuid,
      'title': instance.title,
      'html': instance.html,
      'commentId': instance.commentId,
      'featureImage': instance.featureImage,
      'featured': instance.featured,
      'page': instance.page,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'customExcerpt': instance.customExcerpt,
      'codeinjectionHead': instance.codeinjectionHead,
      'codeinjectionFoot': instance.codeinjectionFoot,
      'ogImage': instance.ogImage,
      'ogTitle': instance.ogTitle,
      'ogDescription': instance.ogDescription,
      'twitterImage': instance.twitterImage,
      'twitterTitle': instance.twitterTitle,
      'twitterDescription': instance.twitterDescription,
      'customTemplate': instance.customTemplate,
      'canonicalUrl': instance.canonicalUrl,
      'authors': instance.authors,
      'tags': instance.tags,
      'primaryAuthor': instance.primaryAuthor,
      'primaryTag': instance.primaryTag,
      'url': instance.url,
      'excerpt': instance.excerpt,
    };

GhostSettings _$GhostSettingsFromJson(Map<String, dynamic> json) {
  return GhostSettings(
    title: json['title'] as String,
    description: json['description'] as String,
    logo: json['logo'] as String,
    icon: json['icon'] as String,
    accentColor: json['accentColor'] as String,
    coverImage: json['coverImage'] as String,
    facebook: json['facebook'] as String,
    twitter: json['twitter'] as String,
    lang: json['lang'] as String,
    timezone: json['timezone'] as String,
    codeinjectionHead: json['codeinjectionHead'] as String,
    codeinjectionFoot: json['codeinjectionFoot'] as String,
    navigation: (json['navigation'] as List)
        ?.map((e) => e == null
            ? null
            : GhostNavigationItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    secondaryNavigation: (json['secondaryNavigation'] as List)
        ?.map((e) => e == null
            ? null
            : GhostNavigationItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    metaTitle: json['metaTitle'] as String,
    metaDescription: json['metaDescription'] as String,
    ogImage: json['ogImage'] as String,
    ogTitle: json['ogTitle'] as String,
    ogDescription: json['ogDescription'] as String,
    twitterImage: json['twitterImage'] as String,
    twitterTitle: json['twitterTitle'] as String,
    twitterDescription: json['twitterDescription'] as String,
    membersSupportAddress: json['membersSupportAddress'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$GhostSettingsToJson(GhostSettings instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'logo': instance.logo,
      'icon': instance.icon,
      'accentColor': instance.accentColor,
      'coverImage': instance.coverImage,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'lang': instance.lang,
      'timezone': instance.timezone,
      'codeinjectionHead': instance.codeinjectionHead,
      'codeinjectionFoot': instance.codeinjectionFoot,
      'navigation': instance.navigation,
      'secondaryNavigation': instance.secondaryNavigation,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'ogImage': instance.ogImage,
      'ogTitle': instance.ogTitle,
      'ogDescription': instance.ogDescription,
      'twitterImage': instance.twitterImage,
      'twitterTitle': instance.twitterTitle,
      'twitterDescription': instance.twitterDescription,
      'membersSupportAddress': instance.membersSupportAddress,
      'url': instance.url,
    };

GhostNavigationItem _$GhostNavigationItemFromJson(Map<String, dynamic> json) {
  return GhostNavigationItem(
    label: json['label'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$GhostNavigationItemToJson(
        GhostNavigationItem instance) =>
    <String, dynamic>{
      'label': instance.label,
      'url': instance.url,
    };

GhostTag _$GhostTagFromJson(Map<String, dynamic> json) {
  return GhostTag(
    slug: json['slug'] as String,
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    featureImage: json['featureImage'] as String,
    visibility: json['visibility'] as String,
    metaTitle: json['metaTitle'] as String,
    metaDescription: json['metaDescription'] as String,
    ogImage: json['ogImage'] as String,
    ogTitle: json['ogTitle'] as String,
    ogDescription: json['ogDescription'] as String,
    twitterImage: json['twitterImage'] as String,
    twitterTitle: json['twitterTitle'] as String,
    twitterDescription: json['twitterDescription'] as String,
    codeinjectionHead: json['codeinjectionHead'] as String,
    codeinjectionFoot: json['codeinjectionFoot'] as String,
    canonicalUrl: json['canonicalUrl'] as String,
    accentColor: json['accentColor'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$GhostTagToJson(GhostTag instance) => <String, dynamic>{
      'slug': instance.slug,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'featureImage': instance.featureImage,
      'visibility': instance.visibility,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'ogImage': instance.ogImage,
      'ogTitle': instance.ogTitle,
      'ogDescription': instance.ogDescription,
      'twitterImage': instance.twitterImage,
      'twitterTitle': instance.twitterTitle,
      'twitterDescription': instance.twitterDescription,
      'codeinjectionHead': instance.codeinjectionHead,
      'codeinjectionFoot': instance.codeinjectionFoot,
      'canonicalUrl': instance.canonicalUrl,
      'accentColor': instance.accentColor,
      'url': instance.url,
    };
