import 'package:flutter/material.dart';
import 'package:movies_app/core/config/pages_route_names.dart';
import 'package:movies_app/featurs/home/pages/home_view.dart';
import 'package:movies_app/featurs/splash/pages/splash_view.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteNames.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
      case PagesRouteNames.home:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}
