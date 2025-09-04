import 'package:flutter/material.dart';

import '../../screenSizeHandling/screenSize.dart';

imagesRow() {
  return SizedBox(
    height: screenSize.const_height / 3,

    /// row of 1 local image and 1 network image
    child: Row(
      children: [
        /// local image
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              right: screenSize.const_width / 60,
              left: screenSize.const_width / 60,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenSize.const_width / 20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: screenSize.const_width / 70,
                  offset: Offset(
                    screenSize.const_width / 200,
                    screenSize.const_width / 85,
                  ),
                ),
              ],
              image: DecorationImage(
                image: AssetImage("assets/images/welcomeImg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        /// network image
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              left: screenSize.const_width / 60,
              right: screenSize.const_width / 60,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenSize.const_width / 20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: screenSize.const_width / 70,
                  offset: Offset(
                    screenSize.const_width / 200,
                    screenSize.const_width / 85,
                  ),
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(
                  "https://pikaso.cdnpk.net/private/production/2303355690/render.png?token=exp=1777939200~hmac=ccd837d6ee614b6522c564a2e3466aa253b20ffbd25bd80c424949de68b42dc0",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
