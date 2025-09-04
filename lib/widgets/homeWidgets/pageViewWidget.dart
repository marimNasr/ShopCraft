import 'package:flutter/material.dart';

import '../../products/featuredProductsMap.dart';
import '../../screenSizeHandling/screenSize.dart';
import '../customizedText.dart';

customizedPageView(PageController pageController, BuildContext context) {
  //page view window
  final featuredProductsMap = getFeaturedProductsMap(context);
  return SizedBox(
    width: screenSize.const_width / 1.1,
    height: screenSize.const_height / 4,
    child: PageView(
      controller: pageController,
      children: List.generate(featuredProductsMap.length, (index) {
        String featuredProductName = featuredProductsMap.keys.elementAt(index);
        String featuredProductImage = featuredProductsMap.values.elementAt(
          index,
        );
        return Container(
          margin: EdgeInsets.symmetric(horizontal: screenSize.const_width / 90),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenSize.const_width / 20),

            /// featured product image
            image: DecorationImage(
              image: AssetImage(featuredProductImage),
              fit: BoxFit.cover,
            ),
          ),

          /// featured product name
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(screenSize.const_width / 40),
              child: customizedText(
                featuredProductName,
                Colors.white,
                20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }),
    ),
  );
}
