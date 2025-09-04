import 'package:flutter/material.dart';

import '../screenSizeHandling/screenSize.dart';

customizedText(
  String text,
  Color color,
  num divider, {
  FontWeight? fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: screenSize.const_width / divider,
      fontFamily: "Suwannaphum",
      fontWeight: fontWeight,
      color: color,
    ),
  );
}
