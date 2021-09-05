import 'package:bonsventos/util/constants.dart';
import 'package:bonsventos/view/title-with-custom-underline.dart';
import 'package:flutter/material.dart';

class TitleWithButtonMore extends StatelessWidget {
  const TitleWithButtonMore({
    Key ?key,
    required this.title,
    required this.pressed
  }) : super(key: key);

  final String title;

  final Function pressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          children: <Widget>[
            TitleWithCustomUnderline(text: title),
            Spacer(),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: textColor,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                onPressed: () => pressed,
                child: const Text("Mais")
            )
          ],
        )
    );
  }
}