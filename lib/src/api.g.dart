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
    profileImage: json['profile_image'] as String,
    coverImage: json['cover_image'] as String,
    bio: json['bio'] as String,
    website: json['website'] as String,
    location: json['location'] as String,
    facebook: json['facebook'] as String,
    twitter: json['twitter'] as String,
    metaTitle: json['meta_title'] as String,
    metaDescription: json['meta_description'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$GhostAuthorToJson(GhostAuthor instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'id': instance.id,
      'name': instance.name,
      'profile_image': instance.profileImage,
      'cover_image': instance.coverImage,
      'bio': instance.bio,
      'website': instance.website,
      'location': instance.location,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'url': instance.url,
    };

GhostPost _$GhostPostFromJson(Map<String, dynamic> json) {
  return GhostPost(
    slug: json['slug'] as String,
    id: json['id'] as String,
    uuid: json['uuid'] as String,
    title: json['title'] as String,
    html: json['html'] as String,
    plaintext: json['plaintext'] as String,
    commentId: json['comment_id'] as String,
    featureImage: json['feature_image'] as String,
    featured: json['featured'] as bool,
    page: json['page'] as bool,
    metaTitle: json['meta_title'] as String,
    metaDescription: json['meta_description'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    publishedAt: json['published_at'] == null
        ? null
        : DateTime.parse(json['published_at'] as String),
    customExcerpt: json['custom_excerpt'] as String,
    codeinjectionHead: json['codeinjection_head'] as String,
    codeinjectionFoot: json['codeinjection_foot'] as String,
    ogImage: json['og_image'] as String,
    ogTitle: json['og_title'] as String,
    ogDescription: json['og_description'] as String,
    twitterImage: json['twitter_image'] as String,
    twitterTitle: json['twitter_title'] as String,
    twitterDescription: json['twitter_description'] as String,
    customTemplate: json['custom_template'] as String,
    canonicalUrl: json['canonical_url'] as String,
    authors: (json['authors'] as List)
        ?.map((e) =>
            e == null ? null : GhostAuthor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : GhostTag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    primaryAuthor: json['primary_author'] == null
        ? null
        : GhostAuthor.fromJson(json['primary_author'] as Map<String, dynamic>),
    primaryTag: json['primary_tag'] == null
        ? null
        : GhostTag.fromJson(json['primary_tag'] as Map<String, dynamic>),
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
      'plaintext': instance.plaintext,
      'comment_id': instance.commentId,
      'feature_image': instance.featureImage,
      'featured': instance.featured,
      'page': instance.page,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'published_at': instance.publishedAt?.toIso8601String(),
      'custom_excerpt': instance.customExcerpt,
      'codeinjection_head': instance.codeinjectionHead,
      'codeinjection_foot': instance.codeinjectionFoot,
      'og_image': instance.ogImage,
      'og_title': instance.ogTitle,
      'og_description': instance.ogDescription,
      'twitter_image': instance.twitterImage,
      'twitter_title': instance.twitterTitle,
      'twitter_description': instance.twitterDescription,
      'custom_template': instance.customTemplate,
      'canonical_url': instance.canonicalUrl,
      'authors': instance.authors,
      'tags': instance.tags,
      'primary_author': instance.primaryAuthor,
      'primary_tag': instance.primaryTag,
      'url': instance.url,
      'excerpt': instance.excerpt,
    };

GhostSettings _$GhostSettingsFromJson(Map<String, dynamic> json) {
  return GhostSettings(
    title: json['title'] as String,
    description: json['description'] as String,
    logo: json['logo'] as String,
    icon: json['icon'] as String,
    accentColor: json['accent_color'] as String,
    coverImage: json['cover_image'] as String,
    facebook: json['facebook'] as String,
    twitter: json['twitter'] as String,
    lang: json['lang'] as String,
    timezone: json['timezone'] as String,
    codeinjectionHead: json['codeinjection_head'] as String,
    codeinjectionFoot: json['codeinjection_foot'] as String,
    navigation: (json['navigation'] as List)
        ?.map((e) => e == null
            ? null
            : GhostNavigationItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    secondaryNavigation: (json['secondary_navigation'] as List)
        ?.map((e) => e == null
            ? null
            : GhostNavigationItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    metaTitle: json['meta_title'] as String,
    metaDescription: json['meta_description'] as String,
    ogImage: json['og_image'] as String,
    ogTitle: json['og_title'] as String,
    ogDescription: json['og_description'] as String,
    twitterImage: json['twitter_image'] as String,
    twitterTitle: json['twitter_title'] as String,
    twitterDescription: json['twitter_description'] as String,
    membersSupportAddress: json['members_support_address'] as String,
    url: json['url'] as String,
    ghostHead: json['ghost_head'] as String,
    ghostFoot: json['ghost_foot'] as String,
    activeTimezone: json['active_timezone'] as String,
    defaultLocale: json['default_locale'] as String,
  );
}

Map<String, dynamic> _$GhostSettingsToJson(GhostSettings instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'logo': instance.logo,
      'icon': instance.icon,
      'accent_color': instance.accentColor,
      'cover_image': instance.coverImage,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'lang': instance.lang,
      'timezone': instance.timezone,
      'codeinjection_head': instance.codeinjectionHead,
      'codeinjection_foot': instance.codeinjectionFoot,
      'navigation': instance.navigation,
      'secondary_navigation': instance.secondaryNavigation,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'og_image': instance.ogImage,
      'og_title': instance.ogTitle,
      'og_description': instance.ogDescription,
      'twitter_image': instance.twitterImage,
      'twitter_title': instance.twitterTitle,
      'twitter_description': instance.twitterDescription,
      'members_support_address': instance.membersSupportAddress,
      'url': instance.url,
      'ghost_head': instance.ghostHead,
      'ghost_foot': instance.ghostFoot,
      'active_timezone': instance.activeTimezone,
      'default_locale': instance.defaultLocale,
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
    featureImage: json['feature_image'] as String,
    visibility: json['visibility'] as String,
    metaTitle: json['meta_title'] as String,
    metaDescription: json['meta_description'] as String,
    ogImage: json['og_image'] as String,
    ogTitle: json['og_title'] as String,
    ogDescription: json['og_description'] as String,
    twitterImage: json['twitter_image'] as String,
    twitterTitle: json['twitter_title'] as String,
    twitterDescription: json['twitter_description'] as String,
    codeinjectionHead: json['codeinjection_head'] as String,
    codeinjectionFoot: json['codeinjection_foot'] as String,
    canonicalUrl: json['canonical_url'] as String,
    accentColor: json['accent_color'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$GhostTagToJson(GhostTag instance) => <String, dynamic>{
      'slug': instance.slug,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'feature_image': instance.featureImage,
      'visibility': instance.visibility,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'og_image': instance.ogImage,
      'og_title': instance.ogTitle,
      'og_description': instance.ogDescription,
      'twitter_image': instance.twitterImage,
      'twitter_title': instance.twitterTitle,
      'twitter_description': instance.twitterDescription,
      'codeinjection_head': instance.codeinjectionHead,
      'codeinjection_foot': instance.codeinjectionFoot,
      'canonical_url': instance.canonicalUrl,
      'accent_color': instance.accentColor,
      'url': instance.url,
    };
