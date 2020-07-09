import 'package:flutter/material.dart';

class AddBookmarkPage extends StatefulWidget {
  @override
  _AddBookmarkPageState createState() => _AddBookmarkPageState();
}

class _AddBookmarkPageState extends State<AddBookmarkPage> {
  final _titleTexController = TextEditingController();

  final _linkTexController = TextEditingController();

  final _linkFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add a new bookmark"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check),
          backgroundColor: Colors.green,
          onPressed: () {
            print("Title:  ${_titleTexController.text}");
            print("Link:  ${_linkTexController.text}");
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: _titleTexController,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (textInput) {
                  FocusScope.of(context).requestFocus(_linkFocusNode);
                },
                decoration: InputDecoration(
                    icon: Icon(Icons.title),
                    labelText: "Title",
                    hintText: "Title of the bookmark",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _linkTexController,
                focusNode: _linkFocusNode,
                decoration: InputDecoration(
                    icon: Icon(Icons.link),
                    labelText: "URL",
                    hintText: "Webpage link",
                    border: OutlineInputBorder()),
              )
            ],
          ),
        ));
  }

  @override
  void dispose() {
    _titleTexController.dispose();
    _linkTexController.dispose();
    _linkFocusNode.dispose();
    super.dispose();
  }
}
