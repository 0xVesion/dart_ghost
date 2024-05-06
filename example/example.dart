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

  print("Browse Ghost Posts");
  final posts = await api.posts.browse(
    limit: 5,
    include: ['tags', 'authors'],
  );
  print('Found ${posts.length} posts:');
  for (int idx = 0; idx < posts.length; idx++) {
    print('${idx + 1}. ${posts[idx].title}');
  }

  print("\nBrowse Ghost Posts with Pagination Info");
  final postsWithPagination =
      await api.posts.browseWithPaginationInfo(limit: 5);
  print(postsWithPagination.paginationInfo);
  print('Found ${postsWithPagination.posts.length} posts:');
  for (int idx = 0; idx < postsWithPagination.posts.length; idx++) {
    print('${idx + 1}. ${postsWithPagination.posts[idx].title}');
  }
}
