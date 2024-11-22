import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String title;
  final String summary;
  final String subtitle;

  const Tile({
    super.key,
    required this.title,
    required this.summary,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Circular dot
              Container(
                margin: const EdgeInsets.only(top: 5),
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              // Content column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First row with Title and date
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '$title flutter.dev',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '21.11.2024',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),

                    const SizedBox(height: 4),
                    // Second row with Link and flag
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            subtitle,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.flag,
                          color: Colors.grey[500],
                        ),
                      ],
                    ),

                    const SizedBox(height: 4),
                    // Summary
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            summary,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 20)
                      ],
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
            indent: 16,
            endIndent: 16,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
