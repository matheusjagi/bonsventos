import 'package:bonsventos/util/constants.dart';
import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({
    Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: defaultPadding * 2,
        right: defaultPadding * 2,
        bottom: defaultPadding,
      ),
      height: 70,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: intermediaryColor
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            padding: EdgeInsets.only(top: 15),
            icon: new Icon(Icons.home, size: 40, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.only(top: 15),
            icon: new Icon(Icons.favorite, size: 40, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.only(top: 15),
            icon: Icon(Icons.add, size: 40, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}