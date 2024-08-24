import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/di/dependencey_injection.dart';
import 'package:g_commerce/core/routing/app_router.dart';
import 'package:g_commerce/core/routing/routes.dart';
import 'package:g_commerce/core/theming/app_theme/main_theme.dart';
import 'package:g_commerce/features/persone_screen/register/ui/register_screen.dart';
import 'package:g_commerce/features/user_screens/home/screen_ui/home_screen.dart';
import 'package:g_commerce/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            locale: const Locale('en'),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: appTheme(),
            onGenerateRoute: AppRouter().generateRouter,
            initialRoute: Routes.registerScreen,
            home: const HomeScreen(),
          );
        });
  }
}
