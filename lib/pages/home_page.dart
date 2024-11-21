import 'package:flutter/material.dart';
import 'package:neem/components/tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Tile(
              title:
                  'Item $index Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tincidunt risus sit amet odio rhoncus, et imperdiet lorem ultrices. Donec.',
              subtitle:
                  'Subtitle $index Nam ut congue mauris. Cras sed neque nunc. Phasellus interdum metus neque, quis tincidunt tortor placerat id. Fusce non diam.',
              summary:
                  'Summary $index Integer venenatis, ipsum a bibendum molestie, dolor nisl ullamcorper urna, ut tempor sem orci nec nunc. Etiam leo mauris, volutpat.');
        },
      ),
    );
  }
}
