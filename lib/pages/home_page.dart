import 'package:flutter/material.dart';
import 'package:myapp/components/tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inbox',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        toolbarHeight: 64,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Tile(
              title: 'Item $index',
              subtitle: 'Subtitle $index',
              summary: 'Summary $index');
        },
      ),
    );
  }
}
