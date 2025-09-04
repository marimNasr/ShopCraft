
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

Map<String, dynamic> getProductsMap(BuildContext context){
  //Localization
  final local = S.of(context);
  return {
    local.macbookPro16: {
      'image': 'assets/products/img1.jpg',
      'price': 2399,
    },
    local.wirelessHeadphones: {
      'image': 'assets/products/img2.jpg',
      'price': 299,
    },
    local.smartWatch: {
      'image': 'assets/products/img3.jpg',
      'price': 399,
    },
    local.designerBackpack: {
      'image': 'assets/products/img4.jpg',
      'price': 129,
    },
    local.premiumKeyboard: {
      'image': 'assets/products/img6.jpg',
      'price': 199,
    },
    local.wirelessMouse: {
      'image': 'assets/products/img5.jpg',
      'price': 79,
    },
  };
}

