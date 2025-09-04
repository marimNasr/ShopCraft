import 'package:flutter/material.dart';

import '../generated/l10n.dart';

Map<String, dynamic> getOffersMap(BuildContext context) {
  //Localization
  final local = S.of(context);
  return {
    local.offer50: {
      'image': 'assets/products/offerImg2.png',
      'description': local.offer50Desc,
    },
    local.freeShip: {
      'image': 'assets/products/offerImg1.png',
      'description': local.freeShipDesc,
    },
    local.b2g1: {
      'image': 'assets/products/offerImg3.png',
      'description': local.b2g1Desc,
    },
    local.offer20: {
      'image': 'assets/products/img6.jpg',
      'description': local.offer20Desc,
    },
    local.bundle: {
      'image': 'assets/products/img5.jpg',
      'description': local.bundleDesc,
    },
  };
}
