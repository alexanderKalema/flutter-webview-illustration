import 'package:flutter/material.dart';
import 'package:webview_example/screens/webview_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Web View Example",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white70,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Open Web View"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const WebViewPage(
                      url: "https://instaflutter.com",
                    )));
          },
        ),
      ),
    );
  }
}
