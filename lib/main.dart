import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/di/dependencey_injection.dart';
import 'package:g_commerce/core/helper/constants.dart';
import 'package:g_commerce/core/helper/extensions.dart';
import 'package:g_commerce/core/helper/shared_prefrence.dart';
import 'package:g_commerce/core/routing/app_router.dart';
import 'package:g_commerce/core/routing/routes.dart';
import 'package:g_commerce/core/theming/app_theme/main_theme.dart';
import 'package:g_commerce/features/screens/home/screen_ui/home_screen.dart';
import 'package:g_commerce/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await checkIfLoggedIn();

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
            initialRoute: isUserLogin ? Routes.homeScreen : Routes.loginScreen,
            onGenerateRoute: AppRouter().generateRouter,
            home: HomeScreen(),
          );
        });
  }
}

checkIfLoggedIn() async {
  await SharedPrefImpl.initSharedPreference();
  SharedPrefImpl sharedPref = SharedPrefImpl();
  String? userToken = await sharedPref.getSecureString('user_id');
  if (userToken.isNullOrEmpty()) {
    isUserLogin = false;
  } else {
    isUserLogin = true;
  }
  print(isUserLogin);
}
