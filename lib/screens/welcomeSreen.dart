import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/homeWidgets/welcomeImagesRow.dart';
import 'package:shopping_app/widgets/customizedText.dart';
import '../generated/l10n.dart';
import '../locale_notifier.dart';
import '../screenSizeHandling/screenSize.dart';
import '../widgets/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize.initi_screenSize(context);
    //Localization
    final local = S.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: customizedText(
            local.shopCraft,
            Colors.white,
            fontWeight: FontWeight.bold,
            16,
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 21, 102, 81),
          actions: [
            TextButton(
              onPressed: () {
                final current = Localizations.localeOf(context).languageCode;
                localeNotifier.value = (current == 'en')
                    ? const Locale('ar')
                    : const Locale('en');
              },
              child: customizedText(
                Localizations.localeOf(context).languageCode == 'en'
                    ? 'AR'
                    : 'EN',
                Color.fromARGB(255, 255, 153, 66),
                20,
              ),
            ),
          ],
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Welcome Text
            Center(
              child: customizedText(
                local.welcomeToShopCraft,
                Colors.black87,
                fontWeight: FontWeight.w500,
                18,
              ),
            ),
            SizedBox(height: screenSize.const_height / 30),

            ///local and network images row
            imagesRow(),
            SizedBox(height: screenSize.const_height / 30),

            /// slogan text
            Center(
              child: customizedText(
                local.premiumShopping,
                Colors.black87,
                fontWeight: FontWeight.w500,
                18,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: screenSize.const_height / 18),

            /// buttons
            //sign in button
            createButton(
              local.signIn,
              Color.fromARGB(255, 21, 102, 81),
              () {
                Navigator.pushNamed(context, '/signIn');
              },
              4,
              50,
              Icons.login,
            ),
            SizedBox(height: screenSize.const_height / 40),
            //sign up button
            createButton(
              local.signUp,
              Color.fromARGB(255, 255, 153, 66),
              () {
                Navigator.pushNamed(context, '/signUp');
              },
              4,
              50,
              Icons.person_add,
            ),
          ],
        ),
      ),
    );
  }
}
