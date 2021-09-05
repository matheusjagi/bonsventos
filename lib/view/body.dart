import 'package:bonsventos/view/card_event.dart';
import 'package:bonsventos/view/details_event/details_screen.dart';
import 'package:bonsventos/view/header_with_searchbox.dart';
import 'package:bonsventos/view/highlights_events.dart';
import 'package:bonsventos/view/title-with-button-more.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),

          TitleWithButtonMore(
            title: "Destaques",
            pressed: () {}
          ),

          HighlightsEvents(
            size: size,
            position: Axis.horizontal,
          ),

          TitleWithButtonMore(
              title: "Eventos",
              pressed: () {}
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                CardEvent(
                    size: size,
                    nameEvent: "Itapemirim Praia Moto Fest",
                    local: "Itapemirim - ES",
                    date: "15 Outubro 2021",
                    pressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(pathImagem: "assets/images/evento-1.jpeg")
                      )
                    )
                ),
                CardEvent(
                    size: size,
                    nameEvent: "Oktober Rock Agazeh",
                    local: "Fundão - ES",
                    date: "09 a 10 Outubro 2021",
                    pressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(pathImagem: "assets/images/evento-1.jpeg")
                        )
                    )
                ),
                CardEvent(
                    size: size,
                    nameEvent: "2º Resplendor Moto Rock",
                    local: "Resplendor - MG",
                    date: "12 a 15 Maio 2022",
                    pressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(pathImagem: "assets/images/evento-1.jpeg")
                        )
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}