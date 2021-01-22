part of 'api.dart';

class _SettingsApi {
  final GhostContentAPI _api;

  _SettingsApi(this._api);

  Future<GhostSettings> browse() async {
    final json = await _api.send('/settings');

    return GhostSettings.fromJson(json['settings'] as Map<String, dynamic>);
  }
}

class GhostSettings {
  final String title;
  final String description;
  final String logo;
  final String icon;
  final String accentColor;
  final String coverImage;
  final String facebook;
  final String twitter;
  final String lang;
  final String timezone;
  final String codeinjectionHead;
  final String codeinjectionFoot;
  final List<GhostNavigationItem> navigation;
  final List<GhostNavigationItem> secondaryNavigation;
  final String metaTitle;
  final String metaDescription;
  final String ogImage;
  final String ogTitle;
  final String ogDescription;
  final String twitterImage;
  final String twitterTitle;
  final String twitterDescription;
  final String membersSupportAddress;
  final String url;

  GhostSettings({
    this.title,
    this.description,
    this.logo,
    this.icon,
    this.accentColor,
    this.coverImage,
    this.facebook,
    this.twitter,
    this.lang,
    this.timezone,
    this.codeinjectionHead,
    this.codeinjectionFoot,
    this.navigation,
    this.secondaryNavigation,
    this.metaTitle,
    this.metaDescription,
    this.ogImage,
    this.ogTitle,
    this.ogDescription,
    this.twitterImage,
    this.twitterTitle,
    this.twitterDescription,
    this.membersSupportAddress,
    this.url,
  });

  factory GhostSettings.fromJson(Map<String, dynamic> json) => GhostSettings(
        title: json['title'],
        description: json['description'],
        logo: json['logo'],
        icon: json['icon'],
        accentColor: json['accent_color'],
        coverImage: json['cover_image'],
        facebook: json['facebook'],
        twitter: json['twitter'],
        lang: json['lang'],
        timezone: json['timezone'],
        codeinjectionHead: json['codeinjection_head'],
        codeinjectionFoot: json['codeinjection_foot'],
        navigation: List<GhostNavigationItem>.from(
            json['navigation'].map((x) => GhostNavigationItem.fromJson(x))),
        secondaryNavigation: List<GhostNavigationItem>.from(
            json['navigation'].map((x) => GhostNavigationItem.fromJson(x))),
        metaTitle: json['meta_title'],
        metaDescription: json['meta_description'],
        ogImage: json['og_image'],
        ogTitle: json['og_title'],
        ogDescription: json['og_description'],
        twitterImage: json['twitter_image'],
        twitterTitle: json['twitter_title'],
        twitterDescription: json['twitter_description'],
        membersSupportAddress: json['members_support_address'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'logo': logo,
        'icon': icon,
        'accent_color': accentColor,
        'cover_image': coverImage,
        'facebook': facebook,
        'twitter': twitter,
        'lang': lang,
        'timezone': timezone,
        'codeinjection_head': codeinjectionHead,
        'codeinjection_foot': codeinjectionFoot,
        'navigation': List<dynamic>.from(navigation.map((x) => x.toJson())),
        'secondary_navigation':
            List<dynamic>.from(secondaryNavigation.map((x) => x)),
        'meta_title': metaTitle,
        'meta_description': metaDescription,
        'og_image': ogImage,
        'og_title': ogTitle,
        'og_description': ogDescription,
        'twitter_image': twitterImage,
        'twitter_title': twitterTitle,
        'twitter_description': twitterDescription,
        'members_support_address': membersSupportAddress,
        'url': url,
      };
}

class GhostNavigationItem {
  GhostNavigationItem({
    this.label,
    this.url,
  });

  final String label;
  final String url;

  factory GhostNavigationItem.fromJson(Map<String, dynamic> json) =>
      GhostNavigationItem(
        label: json['label'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'url': url,
      };
}
