import 'package:bonsventos/view/details_event/event_details.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key ?key,
    required this.pathImagem
  }) : super(key: key);

  final String pathImagem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EventDetails(
        pathImagem: pathImagem,
      ),
    );
  }
}