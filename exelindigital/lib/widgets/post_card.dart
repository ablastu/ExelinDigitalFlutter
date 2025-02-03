import 'package:flutter/material.dart';
import '../models/post.dart';
import '../screens/comment_screen.dart';

class PostCard extends StatelessWidget {
  final Post post;

  PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 3,
      child: ListTile(
        title: Text(post.title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(post.body),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CommentsScreen(postId: post.id)),
          );
        },
      ),
    );
  }
}
