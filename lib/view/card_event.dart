import 'package:flutter/material.dart';
import 'package:bonsventos/util/constants.dart';

class CardEvent extends StatelessWidget {

  const CardEvent({
    Key ?key,
    required this.size,
    required this.nameEvent,
    required this.local,
    required this.date,
    required this.pressed
  }) : super(key: key);

  final Size size;
  final String nameEvent;
  final String local;
  final String date;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding / 2,
      ),
      width: size.width * 0.9,
      child: GestureDetector(
          onTap: pressed,
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
              ],
            ),
          )
      )
    );
  }
}