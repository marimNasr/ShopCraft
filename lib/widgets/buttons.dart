import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/customizedText.dart';

import '../screenSizeHandling/screenSize.dart';

createButton(
  String buttonLabel,
  Color color,
  VoidCallback onPressed,
  int widthDivider,
  int heightDivider, [
  IconData? buttonIcon,
]) {
  ///button Style
  final style = ElevatedButton.styleFrom(
    backgroundColor: color,
    padding: EdgeInsets.symmetric(
      horizontal: screenSize.const_width / widthDivider,
      vertical: screenSize.const_height / heightDivider,
    ),
    shape: const StadiumBorder(),
    elevation: screenSize.const_width / 65,
  );

  ///button with icon (sing up & sign in buttons)
  if (buttonIcon != null) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(buttonIcon, color: Colors.white),
      label: customizedText(buttonLabel, Colors.white, 20),
      style: style,
    );
  }
  ///button without icon
  else {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: customizedText(buttonLabel, Colors.white, 20),
    );
  }
}
