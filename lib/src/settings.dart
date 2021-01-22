part of 'api.dart';

class _SettingsApi {
  final GhostContentAPI _api;

  _SettingsApi(this._api);

  Future<GhostSettings> browse() async {
    final json = await _api.send('/settings');

    return GhostSettings.fromJson(json['settings'] as Map<String, dynamic>);
  }
}

@JsonSerializable()
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

  factory GhostSettings.fromJson(Map<String, dynamic> json) =>
      _$GhostSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$GhostSettingsToJson(this);
}

@JsonSerializable()
class GhostNavigationItem {
  GhostNavigationItem({
    this.label,
    this.url,
  });

  final String label;
  final String url;

  factory GhostNavigationItem.fromJson(Map<String, dynamic> json) =>
      _$GhostNavigationItemFromJson(json);

  Map<String, dynamic> toJson() => _$GhostNavigationItemToJson(this);
}
