import 'package:flutter/material.dart';
import 'package:g_commerce/core/routing/routes.dart';
import 'package:g_commerce/features/screens/home/screen_ui/home_screen.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No Route Here'),
            ),
          ),
        );
    }
  }
}
