import 'package:flutter/material.dart';

class PhotoCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildPhoto('https://placekitten.com/100/100', true, 'Gato 1'),
          buildPhoto('https://placekitten.com/101/101', false, 'Gato 2'),
          buildPhoto('https://placekitten.com/102/102', false, 'Gato 3'),
          buildPhoto('https://placekitten.com/103/103', false, 'Gato 4'),
          buildPhoto('https://placekitten.com/104/104', false, 'Gato 5'),
          buildPhoto('https://placekitten.com/105/105', false, 'Gato 6'),
          buildPhoto('https://placekitten.com/106/106', false, 'Gato 7'),
          buildPhoto('https://placekitten.com/107/107', false, 'Gato 8'),
        ],
      ),
    );
  }

  Widget buildPhoto(String url, bool showIcon, String label) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              ClipOval(
                child: Image.network(
                  url,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              if (showIcon)
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.add_circle_outlined, color: Colors.blue),
                ),
            ],
          ),
          Text(label, style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
