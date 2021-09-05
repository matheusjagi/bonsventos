import 'package:bonsventos/util/constants.dart';
import 'package:flutter/material.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key ?key,
    required this.size,
  }) : super(key: key);

  final Size size;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(bottom: defaultPadding + 2.5),
            height: size.height * 0.2,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      left: defaultPadding,
                      right: defaultPadding,
                      bottom: 36 + defaultPadding
                  ),
                  height: size.height * 0.2 - 27,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36)
                      )
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Bons Ventos!",
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Image.asset("assets/images/principal.png")
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: defaultPadding),
                        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                        height: 54,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: primaryColor.withOpacity(0.23)
                              )
                            ]
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Pesquisar",
                                  hintStyle: TextStyle(
                                      color: primaryColor.withOpacity(0.5)
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.search,
                              color: primaryColor,
                              size: 30.0,
                            ),
                          ],
                        )
                    )
                )
              ],
            )
        )
      ],
    );
  }
}
