import 'package:flutter/material.dart';
import 'package:insta/navbar_insta.dart';
import 'package:insta/PhotoCarrusel.dart';
import 'package:insta/perfil_navbar.dart';
import 'package:insta/imagen_widget.dart';
import 'package:insta/megusta_widget.dart';
import 'package:insta/likes.dart';
import 'package:insta/descripcion.dart';
import 'package:insta/comentario.dart';
import 'package:insta/horasubida.dart';
import 'package:insta/navbar_inferior.dart';

class Instagram extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Instagram();
  }
}

class _Instagram extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbarinsta(),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PhotoCarousel(),
            Container(
              child: Column(
                children: [
                  CustomRowWidget(),
                  FullScreenImageWidget(),
                  IconRowWidget(),
                  LikesWidget(),
                  LongTextWidget(firstWord: "Gatolandia", restOfText: 'Esta es la primer foto que se sube a la cuenta de Gatolandia. Son imágenes en alta resolución, a 4k.'),
                  CommentInputWidget(),
                  TimeAndTranslateWidget(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
