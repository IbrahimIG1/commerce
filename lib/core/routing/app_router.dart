import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/core/di/dependencey_injection.dart';
import 'package:g_commerce/core/routing/routes.dart';
import 'package:g_commerce/features/admin_screens/add_data_screen.dart';
import 'package:g_commerce/features/screens/login/cubit/login_cubit.dart';
import 'package:g_commerce/features/screens/login/ui/login_screen.dart';
import 'package:g_commerce/features/screens/register/cubit/register_cubit.dart';
import 'package:g_commerce/features/screens/register/ui/register_screen.dart';
import 'package:g_commerce/features/screens/category_detailes/category_details_screen.dart';
import 'package:g_commerce/features/screens/home/screen_ui/home_screen.dart';

import '../../features/admin_screens/cubit/admin_cubit.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    print('generateRouter start');
    switch (settings.name) {
      //* home
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      //* register
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: RegisterScreen(),
          ),
        );
      //* login
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      //* category details
      case Routes.categoryDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => CategoryDetailsScreen(
            txt: settings.arguments.toString(),
          ),
        );
      //* add data
      case Routes.addDataScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<AdminCubit>(),
            child: AddDataScreen(),
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
