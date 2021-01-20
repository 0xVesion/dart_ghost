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
    throw UnimplementedError();
  }

  /// [include] can be 'count.post'
  Future<GhostAuthor> read({
    String id,
    String slug,
    List<String> include,
    List<String> fields,
  }) async {
    throw UnimplementedError();
  }
}

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

  factory GhostAuthor.fromJson(Map<String, dynamic> json) => GhostAuthor(
        slug: json['lug'],
        id: json['id'],
        name: json['name'],
        profileImage: json['profile_image'],
        coverImage: json['cover_image'],
        bio: json['bio'],
        website: json['website'],
        location: json['location'],
        facebook: json['facebook'],
        twitter: json['twitter'],
        metaTitle: json['meta_title'],
        metaDescription: json['meta_description'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'slug': slug,
        'id': id,
        'name': name,
        'profile_image': profileImage,
        'cover_image': coverImage,
        'bio': bio,
        'website': website,
        'location': location,
        'facebook': facebook,
        'twitter': twitter,
        'meta_title': metaTitle,
        'meta_description': metaDescription,
        'url': url,
      };
}
