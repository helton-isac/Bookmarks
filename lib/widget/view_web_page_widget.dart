import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebPageWidget extends StatefulWidget {
  String url;
  ViewWebPageWidget(this.url);

  @override
  State<StatefulWidget> createState() => _ViewWebPageWidgetState();
}

class _ViewWebPageWidgetState extends State<ViewWebPageWidget> {
  var _isLoadingWebPage = true;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      WebView(
        initialUrl: widget.url,
        onPageFinished: (url) {
          setState(() {
            _isLoadingWebPage = false;
          });
        },
      ),
      _isLoadingWebPage ? CircularProgressIndicator() : Container(),
    ]);
  }
}