import 'package:flutter/material.dart';

class Typografie {
  Widget displayLarge(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 55.0,
        fontWeight: FontWeight.w700,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget displayMedium(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 45.0,
        fontWeight: FontWeight.w700,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget displaySmall(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 35.0,
        fontWeight: FontWeight.w700,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget headlineLarge(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 33.0,
        fontWeight: FontWeight.w500,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget headlineMedium(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 31.0,
        fontWeight: FontWeight.w300,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget headlineSmall(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 29.0,
        fontWeight: FontWeight.w100,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget titleLarge(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 27.0,
        fontWeight: FontWeight.w300,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget titleMedium(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget titleSamll(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 23.0,
        fontWeight: FontWeight.w100,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget labelLarge(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 21.0,
        fontWeight: FontWeight.w500,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget labelMedium(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 19.0,
        fontWeight: FontWeight.w300,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget labelSamll(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 17.0,
        fontWeight: FontWeight.w100,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget bodyLarge(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget bodyMedium(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 13.0,
        fontWeight: FontWeight.w300,
        fontFamily: "NotoSans",
      ),
    );
  }

  Widget bodySmall(String? text, Color? color) {
    return Text(
      "$text",
      style: TextStyle(
        color: color,
        fontSize: 11.0,
        fontWeight: FontWeight.w100,
        fontFamily: "NotoSans",
      ),
    );
  }
}
