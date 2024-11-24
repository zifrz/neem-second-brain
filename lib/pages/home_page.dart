import 'package:flutter/material.dart';
import 'package:neem/components/tile.dart';
import 'package:neem/models/artifact.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Artifact> artifacts = [
      Artifact(
        title:
            "Lorem ipsum odor amet, consectetuer adipiscing elit. Arcu neque volutpat, purus tempor dictum quisque lacinia aptent. Consectetur mus ante pulvinar volutpat nostra. Scelerisque curae lobortis duis senectus consectetur. ",
        siteName:
            "Lorem ipsum odor amet, consectetuer adipiscing elit. Arcu neque volutpat, purus tempor dictum quisque lacinia aptent. Consectetur mus ante pulvinar volutpat nostra. Scelerisque curae lobortis duis senectus consectetur. ",
        url: "url",
        excerpt:
            "Lorem ipsum odor amet, consectetuer adipiscing elit. Arcu neque volutpat, purus tempor dictum quisque lacinia aptent. Consectetur mus ante pulvinar volutpat nostra. Scelerisque curae lobortis duis senectus consectetur. ",
      )
    ];

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
