import 'package:bonsventos/util/constants.dart';
import 'package:flutter/material.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.77,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding * 3),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            icon: Icon(Icons.arrow_back_rounded),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Spacer(),
                        IconCard(icon: Icons.search),
                        IconCard(icon: Icons.add_location),
                        IconCard(icon: Icons.access_alarms_rounded),
                        IconCard(icon: Icons.date_range_rounded),
                      ],
                    ),
                  ),
                ),
              ]
            ),
          ],
        )
      ),
    );
  }
}
