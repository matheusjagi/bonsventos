import 'package:bonsventos/util/constants.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key ?key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(defaultPadding / 6),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 22,
            color: textColor.withOpacity(0.5),
          ),
          BoxShadow(
            offset: Offset(-10, -10),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(
          icon,
          size: 40,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}