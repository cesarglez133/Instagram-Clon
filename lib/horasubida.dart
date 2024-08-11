import 'package:flutter/material.dart';

class TimeAndTranslateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Text(
            'Hace 2 horas',
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          TextButton(
            onPressed: () {
              print('Botón "Ver traducción" presionado');
            },
            child: Text(
              'Ver traducción',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
