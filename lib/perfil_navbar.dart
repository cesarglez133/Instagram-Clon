import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
            Text('Gatolandia', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.more_vert, color: Colors.white, size: 24.0),
        ),

      ],
    );
  }
}
