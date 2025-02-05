import 'package:flutter/material.dart';

class MovieDescription extends StatelessWidget {
  String description;

  MovieDescription(this.description);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
