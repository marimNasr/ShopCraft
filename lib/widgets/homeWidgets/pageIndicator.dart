import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../products/featuredProductsMap.dart';
import '../../screenSizeHandling/screenSize.dart';

// Page indicator for the featured products carousel
pageIndicator(PageController pageController, BuildContext context) {
  final featuredProductsMap = getFeaturedProductsMap(context);
  return SmoothPageIndicator(
    controller: pageController,
    count: featuredProductsMap.length,
    effect: WormEffect(
      dotHeight: screenSize.const_height / 80,
      dotWidth: screenSize.const_height / 80,
      activeDotColor: Color.fromARGB(255, 21, 102, 81),
      dotColor: Colors.grey,
    ),
  );
}
