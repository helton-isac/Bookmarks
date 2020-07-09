import 'package:bookmarks/model/bookmark.dart';
import 'package:bookmarks/widget/bookmark_grid_item_widget.dart';
import 'package:flutter/material.dart';

class BookmarksGridWidget extends StatelessWidget {
  final List<Bookmark> bookmarksList;

  BookmarksGridWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
          itemCount: bookmarksList.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2,
                crossAxisCount: 2,
                crossAxisSpacing: 6
              ),
          itemBuilder: (BuildContext context, int index) {
            return BookmarkGridItemWidget(bookmarksList[index]);
          }),
    );
  }
}
