import 'package:flutter/material.dart';
import 'package:g_commerce/core/routing/routes.dart';
import 'package:g_commerce/features/screens/category_detailes/category_details_screen.dart';
import 'package:g_commerce/features/screens/home/screen_ui/home_screen.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    print('generateRouter start');
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case Routes.categoryDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => CategoryDetailsScreen(
            txt: settings.arguments.toString(),
          ),
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
