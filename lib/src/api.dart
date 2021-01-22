import 'dart:convert';

import 'package:http/http.dart' as http;

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

  GhostContentAPI({this.url, this.key, this.version = 'v2'});

  Future<Map<String, dynamic>> send(
    String path, [
    Map<String, String> params,
  ]) async {
    params ??= {};
    params['key'] = key;

    final paramsString =
        params.entries.map((e) => '${e.key}=${e.value}').join('&');

    final uri =
        Uri.parse('${url}/ghost/api/${version}/content${path}?$paramsString');

    final response = await http.get(uri);

    return jsonDecode(response.body);
  }

  _PostsApi get posts => _PostsApi(this);

  _AuthorsApi get authors => _AuthorsApi(this);

  _TagsApi get tags => _TagsApi(this);

  _PagesApi get pages => _PagesApi(this);

  _SettingsApi get settings => _SettingsApi(this);
}
