import 'package:bonsventos/util/constants.dart';
import 'package:flutter/material.dart';

class NavigatorBack extends StatelessWidget {
  const NavigatorBack({
    Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: defaultPadding * 1.5,
            left: defaultPadding / 2,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 20,
                    color: textColor.withOpacity(0.7),
                  ),
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 18,
                    color: Colors.white,
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: 40,
                  color: primaryColor,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            )
          ),
        )
      ],
    );
  }
}