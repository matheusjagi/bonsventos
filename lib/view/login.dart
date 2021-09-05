import 'package:bonsventos/util/authentication.dart';
import 'package:bonsventos/view/google_sign_button.dart';
import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget{
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login-bonsventos.jpg'),
                fit: BoxFit.cover,
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
              top: 100.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text(
                        'Seja bem vindo e',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Bons Ventos!',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                FutureBuilder(
                  future: Authentication.initializeFirebase(context: context),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Error ao inicializar o Firebase');
                    } else if (snapshot.connectionState == ConnectionState.done) {
                      return GoogleSignInButon();
                    }
                    return CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.blueGrey,
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ]
      ),
    );
  }
}