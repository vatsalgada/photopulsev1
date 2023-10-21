import 'package:flutter/material.dart';
import 'package:photo_pulse_v1/presentation/welcome_screen/welcome_screen.dart';
import 'package:photo_pulse_v1/presentation/import_screen/import_screen.dart';
import 'package:photo_pulse_v1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String importScreen = '/import_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        welcomeScreen: WelcomeScreen.builder,
        importScreen: ImportScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: WelcomeScreen.builder
      };
}
