import 'package:flutter/material.dart';

class AddBookmarkPage extends StatelessWidget {
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
            print("Input captured");
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
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
}
