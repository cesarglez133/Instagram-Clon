import 'package:flutter/material.dart';

class IconRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            buildClickableIcon(Icons.favorite_border, Colors.white),
            buildClickableIcon(Icons.comment, Colors.white),
            buildClickableIcon(Icons.send, Colors.white),
          ],
        ),
        Row(
          children: [
            buildClickableIcon(Icons.subtitles, Colors.white),
            buildClickableIcon(Icons.file_download, Colors.white),
            buildClickableIcon(Icons.bookmark_border, Colors.white),
          ],
        ),
      ],
    );
  }

  Widget buildClickableIcon(IconData iconData, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          print('Icono $iconData clickeado');
        },
        child: Icon(iconData, size: 24.0, color: color),
      ),
    );
  }
}
