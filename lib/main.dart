import 'package:bonsventos/util/constants.dart';
import 'package:bonsventos/view/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
        scaffoldBackgroundColor: backgroundColor
      ),
      title: 'Bons Ventos',
      home: TelaLogin(),
    );
  }
}
