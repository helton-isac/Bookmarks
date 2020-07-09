import 'package:bookmarks/model/bookmark.dart';
import 'package:bookmarks/util/navigation_util.dart';
import 'package:flutter/material.dart';

class BookmarkListTileWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkListTileWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        bookmark.title,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        bookmark.link,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      onTap: () => navigateToViewBookmarkPage(bookmark, context),
    );
  }
}
