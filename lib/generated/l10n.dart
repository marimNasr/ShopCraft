// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ShopCraft`
  String get shopCraft {
    return Intl.message('ShopCraft', name: 'shopCraft', desc: '', args: []);
  }

  /// `Welcome to ShopCraft!`
  String get welcomeToShopCraft {
    return Intl.message(
      'Welcome to ShopCraft!',
      name: 'welcomeToShopCraft',
      desc: '',
      args: [],
    );
  }

  /// `Your Premium\nShopping Experience`
  String get premiumShopping {
    return Intl.message(
      'Your Premium\nShopping Experience',
      name: 'premiumShopping',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Welcome Back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to ShopCraft`
  String get signInToShopCraft {
    return Intl.message(
      'Sign in to ShopCraft',
      name: 'signInToShopCraft',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `e.g. john12@gmail.com`
  String get emailExample {
    return Intl.message(
      'e.g. john12@gmail.com',
      name: 'emailExample',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get enterEmail {
    return Intl.message(
      'Please enter your email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get invalidEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Enter your password`
  String get enterPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get pleaseEnterPassword {
    return Intl.message(
      'Please enter your password',
      name: 'pleaseEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get shortPassword {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'shortPassword',
      desc: '',
      args: [],
    );
  }

  /// `Congrats!`
  String get congrats {
    return Intl.message('Congrats!', name: 'congrats', desc: '', args: []);
  }

  /// `Account sign-in successfully`
  String get signInSuccess {
    return Intl.message(
      'Account sign-in successfully',
      name: 'signInSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message('Close', name: 'close', desc: '', args: []);
  }

  /// `Let’s Get Started`
  String get createAccount {
    return Intl.message(
      'Let’s Get Started',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Hi there! Join ShopCraft today!`
  String get joinShopCraft {
    return Intl.message(
      'Hi there! Join ShopCraft today!',
      name: 'joinShopCraft',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `e.g. John Doe`
  String get fullNameExample {
    return Intl.message(
      'e.g. John Doe',
      name: 'fullNameExample',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your full name`
  String get enterFullName {
    return Intl.message(
      'Please enter your full name',
      name: 'enterFullName',
      desc: '',
      args: [],
    );
  }

  /// `First letter must be uppercase`
  String get firstLetterUppercase {
    return Intl.message(
      'First letter must be uppercase',
      name: 'firstLetterUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Re-enter your password`
  String get reenterPassword {
    return Intl.message(
      'Re-enter your password',
      name: 'reenterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password`
  String get pleaseConfirmPassword {
    return Intl.message(
      'Please confirm your password',
      name: 'pleaseConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Account created successfully`
  String get signUpSuccess {
    return Intl.message(
      'Account created successfully',
      name: 'signUpSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Our Products`
  String get ourProducts {
    return Intl.message(
      'Our Products',
      name: 'ourProducts',
      desc: '',
      args: [],
    );
  }

  /// `Featured Products`
  String get featuredProducts {
    return Intl.message(
      'Featured Products',
      name: 'featuredProducts',
      desc: '',
      args: [],
    );
  }

  /// `Shop Our Collection`
  String get shopCollection {
    return Intl.message(
      'Shop Our Collection',
      name: 'shopCollection',
      desc: '',
      args: [],
    );
  }

  /// `Hot Offers 🔥`
  String get hotOffers {
    return Intl.message('Hot Offers 🔥', name: 'hotOffers', desc: '', args: []);
  }

  /// `Premium Laptop Collection`
  String get premiumLaptopCollection {
    return Intl.message(
      'Premium Laptop Collection',
      name: 'premiumLaptopCollection',
      desc: '',
      args: [],
    );
  }

  /// `Professional Workspace`
  String get professionalWorkspace {
    return Intl.message(
      'Professional Workspace',
      name: 'professionalWorkspace',
      desc: '',
      args: [],
    );
  }

  /// `Ambient Lighting`
  String get ambientLighting {
    return Intl.message(
      'Ambient Lighting',
      name: 'ambientLighting',
      desc: '',
      args: [],
    );
  }

  /// `50% OFF`
  String get offer50 {
    return Intl.message('50% OFF', name: 'offer50', desc: '', args: []);
  }

  /// `50% Off Electronics Limited time offer on all tech gadgets`
  String get offer50Desc {
    return Intl.message(
      '50% Off Electronics Limited time offer on all tech gadgets',
      name: 'offer50Desc',
      desc: '',
      args: [],
    );
  }

  /// `FREE SHIP`
  String get freeShip {
    return Intl.message('FREE SHIP', name: 'freeShip', desc: '', args: []);
  }

  /// `Free Shipping Weekend No delivery charges on orders above \$50`
  String get freeShipDesc {
    return Intl.message(
      'Free Shipping Weekend No delivery charges on orders above \\\$50',
      name: 'freeShipDesc',
      desc: '',
      args: [],
    );
  }

  /// `B2G1`
  String get b2g1 {
    return Intl.message('B2G1', name: 'b2g1', desc: '', args: []);
  }

  /// `Buy 2 Get 1 Free On selected accessories and peripherals`
  String get b2g1Desc {
    return Intl.message(
      'Buy 2 Get 1 Free On selected accessories and peripherals',
      name: 'b2g1Desc',
      desc: '',
      args: [],
    );
  }

  /// `20% OFF`
  String get offer20 {
    return Intl.message('20% OFF', name: 'offer20', desc: '', args: []);
  }

  /// `Student Discount Extra 20% off with valid student ID`
  String get offer20Desc {
    return Intl.message(
      'Student Discount Extra 20% off with valid student ID',
      name: 'offer20Desc',
      desc: '',
      args: [],
    );
  }

  /// `BUNDLE`
  String get bundle {
    return Intl.message('BUNDLE', name: 'bundle', desc: '', args: []);
  }

  /// `Bundle Deals Save more when you buy complete setups`
  String get bundleDesc {
    return Intl.message(
      'Bundle Deals Save more when you buy complete setups',
      name: 'bundleDesc',
      desc: '',
      args: [],
    );
  }

  /// `MacBook Pro 16"`
  String get macbookPro16 {
    return Intl.message(
      'MacBook Pro 16"',
      name: 'macbookPro16',
      desc: '',
      args: [],
    );
  }

  /// `Wireless Headphones`
  String get wirelessHeadphones {
    return Intl.message(
      'Wireless Headphones',
      name: 'wirelessHeadphones',
      desc: '',
      args: [],
    );
  }

  /// `Smart Watch`
  String get smartWatch {
    return Intl.message('Smart Watch', name: 'smartWatch', desc: '', args: []);
  }

  /// `Designer Backpack`
  String get designerBackpack {
    return Intl.message(
      'Designer Backpack',
      name: 'designerBackpack',
      desc: '',
      args: [],
    );
  }

  /// `Premium Keyboard`
  String get premiumKeyboard {
    return Intl.message(
      'Premium Keyboard',
      name: 'premiumKeyboard',
      desc: '',
      args: [],
    );
  }

  /// `Wireless Mouse`
  String get wirelessMouse {
    return Intl.message(
      'Wireless Mouse',
      name: 'wirelessMouse',
      desc: '',
      args: [],
    );
  }

  /// `Item removed from Cart 🛒`
  String get itemRemoved {
    return Intl.message(
      'Item removed from Cart 🛒',
      name: 'itemRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Item added to the cart 🛒`
  String get itemAdded {
    return Intl.message(
      'Item added to the cart 🛒',
      name: 'itemAdded',
      desc: '',
      args: [],
    );
  }

  /// `{productName} has been removed.`
  String productRemoved(Object productName) {
    return Intl.message(
      '$productName has been removed.',
      name: 'productRemoved',
      desc: '',
      args: [productName],
    );
  }

  /// `{productName} has been successfully added.`
  String productAdded(Object productName) {
    return Intl.message(
      '$productName has been successfully added.',
      name: 'productAdded',
      desc: '',
      args: [productName],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
