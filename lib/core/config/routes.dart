import 'package:flutter/material.dart';
import 'package:movies_app/core/config/pages_route_names.dart';
import 'package:movies_app/features/home_layout/pages/home_layout.dart';
import 'package:movies_app/features/movie_details_view.dart';
import 'package:movies_app/features/splash/pages/splash_view.dart';

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
          builder: (context) => const HomeLayout(),
          settings: settings,
        );
      case PagesRouteNames.homeDetails:
        return MaterialPageRoute(
          builder: (context) => const MovieDetailsView(),
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
