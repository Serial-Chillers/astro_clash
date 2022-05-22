import 'dart:developer';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class CustomRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    log('Route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
          settings: const RouteSettings(name: '/'),
        );
      case NavScreen.routeName:
        return NavScreen.route();
      case CompsScreen.routeName:
        return CompsScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route onGenerateNestedRoute(RouteSettings settings) {
    log('Nested Route: ${settings.name}');
    switch (settings.name) {
      default:
        return _errorRoute();
    }
  }

  static _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error!'),
        ),
      ),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
