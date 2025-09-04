import 'package:flutter/material.dart';

/// A ValueNotifier to manage the current locale of the app.
/// Initialized to English ('en') by default.
final ValueNotifier<Locale> localeNotifier = ValueNotifier(const Locale('en'));
