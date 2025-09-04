import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/customizedText.dart';

import '../../generated/l10n.dart';
import '../../products/ProductsMap.dart';
import '../../screenSizeHandling/screenSize.dart';

cartSnackBar(bool isInCart, int productIndex, BuildContext context) {
  final productsMap = getProductsMap(context);
  String productName = productsMap.keys.elementAt(productIndex);

  //Localization
  final local = S.of(context);

  return SnackBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    content: Container(
      padding: EdgeInsets.all(screenSize.const_width / 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(screenSize.const_width / 30),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: screenSize.const_width / 40,
            offset: Offset(0, screenSize.const_width / 100),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///header
          customizedText(
            isInCart ? local.itemRemoved : local.itemAdded,
            isInCart ? Colors.red : Color.fromARGB(255, 21, 102, 81),
            fontWeight: FontWeight.bold,
            22,
          ),

          ///description
          SizedBox(height: screenSize.const_height / 200),
          customizedText(
            isInCart
                ? local.productRemoved(productName)
                : local.productAdded(productName),
            Colors.black87,
            28,
          ),
        ],
      ),
    ),
    duration: Duration(seconds: 2),
  );
}
