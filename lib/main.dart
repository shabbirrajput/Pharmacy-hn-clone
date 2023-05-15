import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Db/navigator_key.dart';
import 'package:pharmacy_hn_clone/Screens/Splash/screen_splash.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';
import 'package:pharmacy_hn_clone/core/utils/app_routes.dart';
import 'package:pharmacy_hn_clone/core/utils/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppString.textTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: NavigatorKey.navigatorKey,
        initialRoute: AppRoutes.routesSplash,
        home: const ScreenSplash());
  }
}
