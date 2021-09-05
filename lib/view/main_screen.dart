import 'package:bonsventos/util/constants.dart';
import 'package:bonsventos/view/body.dart';
import 'package:bonsventos/view/my_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: new Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Body(),
      bottomNavigationBar: MyNavBar()
    );
  }
}