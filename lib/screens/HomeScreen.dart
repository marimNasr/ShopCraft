import 'package:flutter/material.dart';

import 'package:shopping_app/widgets/homeWidgets/gridViewWidget.dart';
import 'package:shopping_app/widgets/homeWidgets/listViewWidget.dart';
import 'package:shopping_app/widgets/homeWidgets/pageIndicator.dart';
import 'package:shopping_app/widgets/homeWidgets/pageViewWidget.dart';
import '../generated/l10n.dart';
import '../screenSizeHandling/screenSize.dart';
import '../widgets/customizedText.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pageController = PageController();
  Set<int> cartItems = {};

  @override
  Widget build(BuildContext context) {
    screenSize.initi_screenSize(context);

    //Localization
    final local = S.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: customizedText(
            local.ourProducts,
            Colors.white,
            fontWeight: FontWeight.bold,
            16,
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 21, 102, 81),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenSize.const_width / 18),
            child: Column(
              children: [
                /// Featured Products Section
                customizedText(
                  local.featuredProducts,
                  Colors.black,
                  fontWeight: FontWeight.bold,
                  15,
                ),
                SizedBox(height: screenSize.const_height / 30),
                // page view
                customizedPageView(pageController, context),
                SizedBox(height: screenSize.const_height / 40),
                pageIndicator(pageController, context),
                SizedBox(height: screenSize.const_height / 30),

                /// Shop Our Collection Section
                customizedText(
                  local.shopCollection,
                  Colors.black,
                  fontWeight: FontWeight.bold,
                  15,
                ),
                SizedBox(height: screenSize.const_height / 70),
                // grid view
                customizedGridView(cartItems, setState, context),
                SizedBox(height: screenSize.const_height / 30),

                /// Hot Offers Section
                customizedText(
                  local.hotOffers,
                  Colors.black,
                  fontWeight: FontWeight.bold,
                  15,
                ),
                //List view
                SizedBox(height: screenSize.const_height / 70),
                customizedListView(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
