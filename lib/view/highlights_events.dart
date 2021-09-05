import 'package:bonsventos/view/details_event/details_screen.dart';
import 'package:bonsventos/view/highlights_card_event.dart';
import 'package:flutter/material.dart';

class HighlightsEvents extends StatelessWidget {
  const HighlightsEvents({
    Key ?key,
    required this.size,
    required this.position
  }) : super(key: key);

  final Size size;
  final Axis position;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: position,
        child: Row(
          children: <Widget>[
            HighlightsCardEvent(
              size: size,
              pathImage: "assets/images/evento-1.jpeg",
              nameEvent: "13º Aniversário Búzios Moto Clube",
              local: "Búzios - RJ",
              date: "28 Agosto 2021",
              pressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(pathImagem: "assets/images/evento-1.jpeg")
                  )
                );
              },
            ),
            HighlightsCardEvent(
              size: size,
              pathImage: "assets/images/evento-2.jpeg",
              nameEvent: "Aniversário Iron Wolves MC",
              local: "Itapemirim - ES",
              date: "15, 16 Outubro 2021",
              pressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(pathImagem: "assets/images/evento-2.jpeg",)
                  )
                );
              },
            ),
            HighlightsCardEvent(
              size: size,
              pathImage: "assets/images/evento-3.jpeg",
              nameEvent: "1° Aniversário Cupins Moto Clube",
              local: "Serra - ES",
              date: "27, 28 Novembro 2021",
              pressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(pathImagem: "assets/images/evento-3.jpeg",)
                  )
                );
              },
            ),
          ],
        )
    );
  }
}