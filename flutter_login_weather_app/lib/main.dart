import 'package:flutter/material.dart';
import 'package:flutter_login_weather_app/login_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  // Router configuration
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => LoginPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}