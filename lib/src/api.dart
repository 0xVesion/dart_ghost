import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'api.g.dart';
part 'authors.dart';
part 'pages.dart';
part 'posts.dart';
part 'settings.dart';
part 'tags.dart';

class GhostContentAPI {
  final String url;
  final String key;
  final String version;

  GhostContentAPI({required this.url, required this.key, this.version = 'v2'});

  Future<Map<String, dynamic?>> send(
    String path, [
    Map<String, dynamic>? params,
  ]) async {
    params ??= <String, dynamic>{};
    params['key'] = key;

    final valueToString = (dynamic value) {
      if (value is List) return value.map((dynamic e) => '$e').join(',');

      return '$value';
    };

    final paramsString = params.entries
        .where((e) => e.value != null)
        .map((e) => '${e.key}=${valueToString(e.value)}')
        .join('&');

    final uri = '${url}/ghost/api/${version}/content${path}?$paramsString';

    final response = await http.get(Uri.parse(uri));

    if (response.statusCode != 200) throw Exception(response.body);

    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  _PostsApi get posts => _PostsApi(this);

  _AuthorsApi get authors => _AuthorsApi(this);

  _TagsApi get tags => _TagsApi(this);

  _PagesApi get pages => _PagesApi(this);

  _SettingsApi get settings => _SettingsApi(this);
}

List<T> _map<T>(
  dynamic json,
  String name,
  T Function(Map<String, dynamic>) map,
) =>
    (json[name] as List<dynamic>)
        .cast<Map<String, dynamic>>()
        .map(map)
        .toList();

String _idOrSlugPath(String? id, String? slug) {
  if (id != null && slug != null) throw Error();
  if (id == null && slug == null) throw Error();

  return slug == null ? '${id}' : 'slug/${slug}';
}
