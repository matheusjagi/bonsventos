import 'package:flutter/material.dart';
import 'package:bonsventos/util/constants.dart';

class CardDetails extends StatelessWidget {

  const CardDetails({
    Key ?key,
    required this.size,
    required this.nameEvent,
    required this.local,
    required this.date
  }) : super(key: key);

  final Size size;
  final String nameEvent;
  final String local;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: defaultPadding / 2,
          bottom: defaultPadding / 2,
        ),
        width: size.width * 0.9,
        child: Container(
          padding: EdgeInsets.all(defaultPadding / 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: primaryColor.withOpacity(0.23)
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Row(
                  children: <Widget>[
                    Icon(Icons.motorcycle),
                    Padding(padding: EdgeInsets.only(right: defaultPadding / 2)),
                    Expanded(
                      child: Text(
                        nameEvent.toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                    )
                  ]
              ),
              Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2)),
              Row(
                  children: <Widget>[
                    Icon(Icons.add_location),
                    Padding(padding: EdgeInsets.only(right: defaultPadding / 2)),
                    Expanded(
                      child: Text(
                          local.toUpperCase(),
                          style: TextStyle(
                              color: primaryColor
                          )
                      ),
                    )
                  ]
              ),
              Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2)),
              Row(
                  children: <Widget>[
                    Icon(Icons.date_range_rounded),
                    Padding(padding: EdgeInsets.only(right: defaultPadding / 2)),
                    Expanded(
                      child: Text(
                          date.toUpperCase(),
                          style: TextStyle(
                              color: dateColor
                          )
                      ),
                    ),
                  ]
              ),
              Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2)),
              const Divider(
                height: defaultPadding,
                thickness: 2.5,
                indent: 10,
                endIndent: 10,
              ),
              Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2)),
              Row(
                  children: <Widget>[
                    Icon(Icons.check_box_outlined),
                    Padding(padding: EdgeInsets.only(right: defaultPadding / 2)),
                    Expanded(
                      child: Text(
                          "Area de Camping".toUpperCase(),
                          style: TextStyle(
                              color: Colors.black
                          )
                      ),
                    ),
                  ]
              ),
              Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2)),
              Row(
                  children: <Widget>[
                    Icon(Icons.check_box_outlined),
                    Padding(padding: EdgeInsets.only(right: defaultPadding / 2)),
                    Expanded(
                      child: Text(
                          "Troféus p/ MC e MG".toUpperCase(),
                          style: TextStyle(
                              color: Colors.black
                          )
                      ),
                    ),
                  ]
              ),
              Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2)),
              Row(
                  children: <Widget>[
                    Icon(Icons.check_box_outlined),
                    Padding(padding: EdgeInsets.only(right: defaultPadding / 2)),
                    Expanded(
                      child: Text(
                          "Expositores".toUpperCase(),
                          style: TextStyle(
                              color: Colors.black
                          )
                      ),
                    ),
                  ]
              ),
              Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2)),
              Row(
                  children: <Widget>[
                    Icon(Icons.check_box_outlined),
                    Padding(padding: EdgeInsets.only(right: defaultPadding / 2)),
                    Expanded(
                      child: Text(
                          "Café da manhã".toUpperCase(),
                          style: TextStyle(
                              color: Colors.black
                          )
                      ),
                    ),
                  ]
              ),
              Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2)),
              Row(
                  children: <Widget>[
                    Icon(Icons.check_box_outlined),
                    Padding(padding: EdgeInsets.only(right: defaultPadding / 2)),
                    Expanded(
                      child: Text(
                          "Shows de Rock".toUpperCase(),
                          style: TextStyle(
                              color: Colors.black
                          )
                      ),
                    ),
                  ]
              ),
            ],
          ),
        )
    );
  }
}