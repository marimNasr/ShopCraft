import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/customizedText.dart';

import '../../animation/fadingAnimation.dart';
import '../../generated/l10n.dart';

showSuccessDialog(String message, BuildContext context) {
  //Localization
  final local = S.of(context);

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: customizedText(local.congrats, Colors.black, 18),
        content: customizedText(message, Colors.black, 29),
        actions: [
          TextButton(
            child: customizedText(local.close, Colors.purple, 27),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
              FocusScope.of(context).unfocus(); // Dismiss the keyboard
              Navigator.of(context).pushReplacement(
                createRouteTransition(),
              ); // Navigate to another screen with transition
            },
          ),
        ],
      );
    },
  );
}
