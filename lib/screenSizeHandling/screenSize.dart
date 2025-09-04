import 'package:flutter/material.dart';

class screenSize {
  static late double const_width;
  static late double const_height;

  static void initi_screenSize(BuildContext context) {
    const_width = MediaQuery.of(context).size.width;
    const_height = MediaQuery.of(context).size.height;
  }
}
