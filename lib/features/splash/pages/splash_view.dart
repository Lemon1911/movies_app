import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_app/core/config/pages_route_names.dart';
import 'package:movies_app/main.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        navigatorKey.currentState?.pushReplacementNamed(PagesRouteNames.home);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff121312),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Image(
            image: AssetImage("assets/images/movies_logo.png"),
          ),
        ),
      ),
    );
  }
}
