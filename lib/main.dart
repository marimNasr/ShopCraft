import 'package:flutter/material.dart';
import 'package:shopping_app/generated/l10n.dart';
import 'package:shopping_app/screens/HomeScreen.dart';
import 'package:shopping_app/screens/signUpScreen.dart';
import 'package:shopping_app/screens/signinScreen.dart';
import 'package:shopping_app/screens/welcomeSreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'locale_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: localeNotifier,
      builder: (context, locale, _) {
        return MaterialApp(
          title: 'ShopCraft',
          locale: locale,
          debugShowCheckedModeBanner: false,
          home: WelcomeScreen(),
          routes: {
            '/welcome': (context) => WelcomeScreen(),
            '/signIn': (context) => SignInScreen(),
            '/signUp': (context) => SignUpScreen(),
            '/home': (context) => HomeScreen(),
          },
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      },
    );
  }
}
