part 'authors.dart';
part 'pages.dart';
part 'posts.dart';
part 'settings.dart';
part 'tags.dart';

// https://ghost.org/docs/content-api/javascript/

class GhostContentAPI {
  final String url;
  final String key;
  final String version;

  GhostContentAPI({this.url, this.key, this.version});

  _PostsApi get posts => _PostsApi(this);

  _AuthorsApi get authors => _AuthorsApi(this);

  _TagsApi get tags => _TagsApi(this);

  _PagesApi get pages => _PagesApi(this);

  _SettingsApi get settings => _SettingsApi(this);
}
