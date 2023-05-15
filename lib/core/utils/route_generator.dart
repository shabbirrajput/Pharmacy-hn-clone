import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Admin_Vendor/dashboard.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_login.dart';
import 'package:pharmacy_hn_clone/Screens/Splash/screen_splash.dart';
import 'package:pharmacy_hn_clone/core/utils/app_routes.dart';

/// > RouteGenerator is a class that generates routes for the application
/// It's a class that generates routes
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.routesSplash:
        return MaterialPageRoute(
            builder: (_) => const ScreenSplash(),
            settings: const RouteSettings(name: AppRoutes.routesSplash));
      case AppRoutes.routesLogin:
        return MaterialPageRoute(
            builder: (_) => const ScreenLogin(),
            settings: const RouteSettings(name: AppRoutes.routesLogin));
      case AppRoutes.routesWelcomeCard:
        return MaterialPageRoute(
            builder: (_) => const ScreenDashboard(),
            settings: const RouteSettings(name: AppRoutes.routesWelcomeCard));
      default:
        return MaterialPageRoute(
            builder: (_) => const ScreenSplash(),
            settings: const RouteSettings(name: AppRoutes.routesSplash));
    }
  }
}
