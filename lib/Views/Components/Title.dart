import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;

  CustomTitle({required this.title, required this.fontSize, this.fontWeight= FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight
        ),
      ),
    );
  }
}
