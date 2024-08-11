import 'package:flutter/material.dart';

class Navbarinsta extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.add_box_outlined, size: 24.0, color: Colors.white),
          SizedBox(width: 25),
          Text('Instagram', style: TextStyle(color: Colors.white)),
        ],
      ),
      actions: [
        Icon(Icons.settings, size: 24.0, color: Colors.white),
        SizedBox(width: 25),
        Icon(Icons.wb_sunny, size: 24.0, color: Colors.white),
        SizedBox(width: 25),
        Icon(Icons.favorite_border, size: 24.0, color: Colors.white),
        SizedBox(width: 25),
        Icon(Icons.message, size: 24.0, color: Colors.white),
        SizedBox(width: 25),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

