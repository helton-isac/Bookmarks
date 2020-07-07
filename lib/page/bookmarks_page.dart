import 'package:bookmarks/model/bookmark.dart';
import 'package:bookmarks/page/add_bookmark_page.dart';
import 'package:bookmarks/widget/bookmarks_list_widget.dart';
import 'package:flutter/material.dart';

class BookmarksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Bookmark> bookmarksList = [
      Bookmark("Flutter", "https://flutter.dev"),
      Bookmark("Google", "https://google.com"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("My Bookmarks"),
      ),
      body: BookmarksListWidget(bookmarksList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddBookmarkPage()));
        },
        label: Text("Add"),
      ),
    );
  }
}
