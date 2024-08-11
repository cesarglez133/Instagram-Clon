import 'package:flutter/material.dart';

class CommentInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.network(
              'https://placekitten.com/40/40',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Campo de texto
        Expanded(
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Agrega un comentario...',
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
