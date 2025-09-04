import 'package:flutter/material.dart';

import '../../products/offersMap.dart';
import '../../screenSizeHandling/screenSize.dart';
import '../customizedText.dart';

customizedListView(BuildContext context) {
  final offersMap = getOffersMap(context);
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: 5,
    itemBuilder: (context, index) {
      String offerImage = offersMap.values.elementAt(index)['image'];
      String offerTitle = offersMap.keys.elementAt(index);
      String offerDescription = offersMap.values.elementAt(
        index,
      )['description'];

      ///offer card
      return Container(
        margin: EdgeInsets.only(bottom: screenSize.const_height / 40),
        padding: EdgeInsets.all(screenSize.const_width / 30),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 21, 102, 81).withOpacity(0.1),
          borderRadius: BorderRadius.circular(screenSize.const_width / 30),
        ),
        child: Row(
          children: [
            /// Offer Image
            Container(
              width: screenSize.const_width / 4,
              height: screenSize.const_width / 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  screenSize.const_width / 30,
                ),
                image: DecorationImage(
                  image: AssetImage(offerImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: screenSize.const_width / 20),

            /// Offer Details
            Expanded(
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero, // remove default padding
                //offer title
                title: customizedText(
                  offerTitle,
                  Colors.black,
                  24,
                  fontWeight: FontWeight.bold,
                ),
                //offer description
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenSize.const_width / 50),
                    child: customizedText(offerDescription, Colors.black87, 30),
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
