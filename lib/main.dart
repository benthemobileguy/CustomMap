import 'package:flutter/material.dart';
import 'package:flutter_custom_map/routes.dart';
import 'package:flutter_custom_map/screens/splash-screen.dart';
import 'package:flutter_custom_map/theme/styles.dart';



void main() {
  // Register all the models and services before the app starts

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: MaterialApp(
        title: 'Custom Map',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: routes,
        navigatorObservers: [],
      ),
    );
  }
}
