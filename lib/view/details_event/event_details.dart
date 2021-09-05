import 'package:bonsventos/view/details_event/card_details.dart';
import 'package:bonsventos/view/details_event/my_back_nav_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {

  const EventDetails({
    Key ?key,
    required this.pathImagem
  }) : super(key: key);

  final String pathImagem;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: size.width,
                height: size.height * 0.40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(pathImagem)
                  )
                ),
                child: NavigatorBack()
              ),
            ],
          ),
          CardDetails(
              size: size,
              nameEvent: "1° Aniversário Cupins Moto Clube",
              local: "Serra - ES",
              date: "27, 28 Novembro 2021",
          )
        ],
      )
    );
  }
}