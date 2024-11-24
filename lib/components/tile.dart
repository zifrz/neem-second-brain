import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:neem/models/artifact.dart';

class Tile extends StatefulWidget {
  final Artifact artifact;

  const Tile({
    super.key,
    required this.artifact,
  });

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  late String title = widget.artifact.title;
  late String summary = widget.artifact.excerpt ?? "";
  late String subtitle = widget.artifact.siteName ?? "";
  late bool isRead = widget.artifact.isRead;
  late DateTime createdAt = widget.artifact.createdAt;
  late bool isStarred = widget.artifact.isStarred;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.all(8.0);
    const spacer = SizedBox(width: 8);
    const smallSpacer = SizedBox(height: 2);

    return Column(
      children: [
        Slidable(
          startActionPane: ActionPane(
            motion: const BehindMotion(),
            children: [
              SlidableAction(
                onPressed: (_) => setState(() => isRead = !isRead),
                icon: isRead ? Icons.mail_outline_rounded : Icons.mail_rounded,
                label: isRead ? "Unread" : "Read",
                backgroundColor: Colors.blue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                autoClose: true,
              )
            ],
          ),
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: (_) => setState(() => isStarred = !isStarred),
                icon:
                    isStarred ? CupertinoIcons.star : CupertinoIcons.star_fill,
                label: isStarred ? "Unstar" : "Star",
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
                autoClose: true,
              ),
              SlidableAction(
                onPressed: (_) {},
                icon: Icons.delete,
                label: "Delete",
                backgroundColor: Colors.red,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                autoClose: true,
              )
            ],
          ),
          child: Padding(
            padding: padding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: (isRead) ? 0 : 1,
                  child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      )),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          spacer,
                          Text(
                            '${createdAt.day}.${createdAt.month}.${createdAt.year}',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          const Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ],
                      ),
                      smallSpacer,
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              subtitle,
                              style: const TextStyle(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          spacer,
                          Icon(Icons.flag, color: Colors.grey[500]),
                        ],
                      ),
                      smallSpacer,
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
                          const SizedBox(width: 20),
                        ],
                      ),
                      smallSpacer,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey[300],
          indent: 16,
          endIndent: 16,
          thickness: 2,
        ),
      ],
    );
  }
}
