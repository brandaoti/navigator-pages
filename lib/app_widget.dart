import 'package:flutter/material.dart';

import 'screens/fourth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/second_view.dart';
import 'screens/third_screen.dart';
import 'shared/core/routes/app_route.dart';

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
