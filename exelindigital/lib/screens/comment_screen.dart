import 'package:flutter/material.dart';
import '../models/comment.dart';
import '../services/api_service.dart';
import '../widgets/comment_card.dart';

class CommentsScreen extends StatelessWidget {
  final int postId;

  CommentsScreen({required this.postId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Comentarios')),
      body: FutureBuilder<List<Comment>>(
        future: ApiService.fetchComments(postId), 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator()); 
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error al obtener comentarios')); 
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay comentarios aún')); 
          }

          // Lista de comentarios
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return CommentCard(comment: snapshot.data![index]); 
            },
          );
        },
      ),
    );
  }
}
