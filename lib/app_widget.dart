import 'package:flutter/material.dart';
import 'package:navigator_pages/screens/fourth_screen.dart';
import 'package:navigator_pages/screens/home_screen.dart';
import 'package:navigator_pages/screens/second_view.dart';
import 'package:navigator_pages/screens/third_screen.dart';
import 'package:navigator_pages/shared/core/routes/app_route.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigator routes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppRoute.HOME: (context) => HomeScreen(),
        AppRoute.SECOND_SCREEN: (context) => SecondScreen(),
        AppRoute.THIRD_SCREEN: (context) => ThirdScreen(),
        AppRoute.FOURTH_SCREEN: (context) => FourthScreen(),
      },
    );
  }
}
