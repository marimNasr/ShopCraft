import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/homeWidgets/productImageStack.dart';
import 'package:shopping_app/widgets/customizedText.dart';

import '../../products/ProductsMap.dart';
import '../../screenSizeHandling/screenSize.dart';

customizedGridView(Set cartItems, StateSetter setState, BuildContext context) {
  final productsMap = getProductsMap(context);
  return GridView.builder(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: screenSize.const_width / 20,
      crossAxisSpacing: screenSize.const_width / 30,
      childAspectRatio: screenSize.const_width / 620,
    ),
    itemCount: productsMap.length,
    itemBuilder: (BuildContext context, int index) {
      final isInCart = cartItems.contains(index);
      String productImage = productsMap.values.elementAt(index)['image'];
      String productName = productsMap.keys.elementAt(index);
      num productPrice = productsMap.values.elementAt(index)['price'];

      /// Product Card
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenSize.const_width / 30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: screenSize.const_width / 200,
              blurRadius: screenSize.const_width / 100,
              offset: Offset(0, screenSize.const_width / 100),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Product Image with Add to Cart Button
            imageStack(
              index,
              productImage,
              isInCart,
              setState,
              cartItems,
              context,
            ),
            Padding(
              padding: EdgeInsets.all(screenSize.const_width / 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Product Name
                  customizedText(
                    productName,
                    Colors.black,
                    28,
                    fontWeight: FontWeight.bold,
                  ),

                  /// Product Price
                  SizedBox(height: screenSize.const_height / 100),
                  customizedText(
                    "\$$productPrice",
                    Color.fromARGB(255, 21, 102, 81),
                    29,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
