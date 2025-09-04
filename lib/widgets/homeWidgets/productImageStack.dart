import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/homeWidgets/cartSnackBar.dart';

import '../../screenSizeHandling/screenSize.dart';

imageStack(
  int index,
  String productImage,
  bool isInCart,
  StateSetter setState,
  Set cartItems,
  BuildContext context,
) {
  return Stack(
    children: [
      /// Product Image
      Container(
        height: screenSize.const_height / 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(screenSize.const_width / 30),
            topRight: Radius.circular(screenSize.const_width / 30),
          ),
          image: DecorationImage(
            image: AssetImage(productImage),
            fit: BoxFit.cover,
          ),
        ),
      ),

      /// Cart Icon Button
      Positioned(
        top: screenSize.const_width / 50,
        right: screenSize.const_width / 50,
        // the rounded background
        child: Container(
          padding: EdgeInsets.all(screenSize.const_width / 1050),
          decoration: BoxDecoration(
            color: isInCart
                ? Color.fromARGB(255, 255, 153, 66).withOpacity(0.9)
                : Colors.white.withOpacity(0.7),
            shape: BoxShape.circle,
          ),
          // the icon button
          child: IconButton(
            padding: EdgeInsets.zero, // remove default padding
            constraints: BoxConstraints(), // remove min size
            onPressed: () {
              setState(() {
                if (isInCart) {
                  cartItems.remove(index);
                } else {
                  cartItems.add(index);
                }
              });

              /// Show SnackBar
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(cartSnackBar(isInCart, index, context));
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: isInCart
                  ? Colors.white
                  : Color.fromARGB(255, 255, 153, 66),
              size: screenSize.const_width / 15,
            ),
          ),
        ),
      ),
    ],
  );
}
