import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AmazonScreen  extends StatelessWidget {
  late WebViewController controller;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text("Mac Browser",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(icon: Icon(Icons.arrow_back),
              onPressed: () async {
                if (await controller.canGoBack()) {
                  controller.goBack();
                }
              }
          ),
          IconButton(icon: Icon(Icons.refresh),
            onPressed: () => controller.reload(),

          ),
          IconButton(icon: Icon(Icons.arrow_forward),
              onPressed: () async {
                if (await controller.canGoForward()) {
                  controller.goForward();
                }
              }
          ),
        ],
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://amazon.com",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller){
            this.controller = controller;
          },
        ),
      ),
    );
  }
}