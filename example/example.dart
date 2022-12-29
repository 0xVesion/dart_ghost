import 'package:ghost/ghost.dart';

/// As this package closely follows the official js implementation of the ghost api client, the js
/// client documentation (https://ghost.org/docs/content-api/javascript/) should also help you in
/// setting up the ghost dart client. All examples there can easily be adapted to dart. This example
/// was also adapted from there.
Future<void> main() async {
  final api = GhostContentAPI(
    url: 'https://demo.ghost.io',
    key: '22444f78447824223cefc48062',
    version: 'v3',
  );

  final posts = await api.posts.browse(
    limit: 5,
    include: ['tags', 'authors'],
  );

  for (final post in posts) {
    print(post.title);
  }
}
