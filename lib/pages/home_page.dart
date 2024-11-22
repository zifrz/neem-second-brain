import 'package:flutter/material.dart';
import 'package:neem/components/tile.dart';
import 'package:neem/models/artifact.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Artifact> artifacts = [
    Artifact(
      title: "title",
      siteName: "siteName",
      url: "url",
      excerpt: "asdasd",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inbox',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Tile(
              artifact: artifacts[0],
            );
          },
        ),
      ),
    );
  }
}
