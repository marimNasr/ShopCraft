import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/customizedText.dart';

import '../../screenSizeHandling/screenSize.dart';

fieldLabel(String label) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: screenSize.const_width / 20),
    child: customizedText(label, Colors.white, 25, fontWeight: FontWeight.w400),
  );
}
