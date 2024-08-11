import 'package:flutter/material.dart';

class FullScreenImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Image.network(
      'https://placekitten.com/800/800',
      width: screenWidth,
      height: screenWidth,
      fit: BoxFit.cover,
    );
  }
}
