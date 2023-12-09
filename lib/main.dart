import 'package:flutter/material.dart';
import 'package:movies_app/core/config/app_theme.dart';
import 'package:movies_app/core/config/pages_route_names.dart';
import 'package:movies_app/core/config/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      themeMode: ThemeMode.light,
      initialRoute: PagesRouteNames.initial,
      onGenerateRoute: Routes.onGenerateRoute,
      navigatorKey: navigatorKey,
    );
  }
}
