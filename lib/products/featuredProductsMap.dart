import 'package:flutter/widgets.dart';
import '../generated/l10n.dart';

Map<String, String> getFeaturedProductsMap(BuildContext context) {
  //Localization
  final local = S.of(context);

  return {
    local.premiumLaptopCollection: 'assets/products/img1.jpg',
    local.professionalWorkspace: 'assets/products/img2.jpg',
    local.ambientLighting: 'assets/products/img4.jpg',
  };
}
