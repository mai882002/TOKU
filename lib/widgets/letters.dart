// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Letters extends StatelessWidget {
  const Letters({
    Key? key,
    required this.letter,
    required this.color,
  }) : super(key: key);
  final String letter;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      letter,
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: color),
    );
  }
}
