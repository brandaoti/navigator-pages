[1mdiff --git a/lib/screens/fourth_screen.dart b/lib/screens/fourth_screen.dart[m
[1mindex 3cc9e64..78d79f2 100644[m
[1m--- a/lib/screens/fourth_screen.dart[m
[1m+++ b/lib/screens/fourth_screen.dart[m
[36m@@ -1,4 +1,5 @@[m
 import 'package:flutter/material.dart';[m
[32m+[m[32mimport 'package:navigator_pages/screens/home_screen.dart';[m
 [m
 class FourthScreen extends StatelessWidget {[m
   //[m
[36m@@ -7,7 +8,7 @@[m [mclass FourthScreen extends StatelessWidget {[m
   Widget build(BuildContext context) {[m
     return Scaffold([m
       appBar: AppBar([m
[31m-        title: Text('Fourth view'),[m
[32m+[m[32m        title: Text('Fourth'),[m
         centerTitle: true,[m
       ),[m
       body: Column([m
[36m@@ -27,7 +28,14 @@[m [mclass FourthScreen extends StatelessWidget {[m
                   elevation: 5,[m
                   // enableFeedback: true,[m
                 ),[m
[31m-                onPressed: () {},[m
[32m+[m[32m                onPressed: () {[m
[32m+[m[32m                  Navigator.pop([m
[32m+[m[32m                    context,[m
[32m+[m[32m                    MaterialPageRoute([m
[32m+[m[32m                      builder: (_) => HomeScreen(),[m
[32m+[m[32m                    ),[m
[32m+[m[32m                  );[m
[32m+[m[32m                },[m
               ),[m
             ],[m
           ),[m
[1mdiff --git a/lib/screens/home_screen.dart b/lib/screens/home_screen.dart[m
[1mindex d008390..a3dda28 100644[m
[1m--- a/lib/screens/home_screen.dart[m
[1m+++ b/lib/screens/home_screen.dart[m
[36m@@ -10,7 +10,7 @@[m [mclass HomeScreen extends StatelessWidget {[m
     return Scaffold([m
       backgroundColor: Colors.orange,[m
       appBar: AppBar([m
[31m-        title: Text('Pagina inicial'),[m
[32m+[m[32m        title: Text('First'),[m
         centerTitle: true,[m
       ),[m
       body: Row([m
[1mdiff --git a/lib/screens/second_view.dart b/lib/screens/second_view.dart[m
[1mindex 98e47eb..4eb9c93 100644[m
[1m--- a/lib/screens/second_view.dart[m
[1m+++ b/lib/screens/second_view.dart[m
[36m@@ -7,7 +7,7 @@[m [mclass SecondScreen extends StatelessWidget {[m
   Widget build(BuildContext context) {[m
     return Scaffold([m
       appBar: AppBar([m
[31m-        title: Text('Segunda tela'),[m
[32m+[m[32m        title: Text('Second'),[m
         centerTitle: true,[m
       ),[m
       body: Column([m
[1mdiff --git a/lib/screens/third_screen.dart b/lib/screens/third_screen.dart[m
[1mindex 520269b..e02366a 100644[m
[1m--- a/lib/screens/third_screen.dart[m
[1m+++ b/lib/screens/third_screen.dart[m
[36m@@ -8,7 +8,7 @@[m [mclass ThirdScreen extends StatelessWidget {[m
   Widget build(BuildContext context) {[m
     return Scaffold([m
       appBar: AppBar([m
[31m-        title: Text('Third view'),[m
[32m+[m[32m        title: Text('Third'),[m
         centerTitle: true,[m
       ),[m
       body: Column([m
[1mdiff --git a/lib/shared/core/routes/app_route.dart b/lib/shared/core/routes/app_route.dart[m
[1mindex 7552692..9ecfb8e 100644[m
[1m--- a/lib/shared/core/routes/app_route.dart[m
[1m+++ b/lib/shared/core/routes/app_route.dart[m
[36m@@ -1,6 +1,6 @@[m
 class AppRoute {[m
[31m-  static const HOME = '/home';[m
[32m+[m[32m  static const HOME = '/';[m
   static const SECOND_SCREEN = '/second';[m
[31m-  static const THIRD_SCREEN = '/';[m
[32m+[m[32m  static const THIRD_SCREEN = '/third';[m
   static const FOURTH_SCREEN = '/fourth';[m
 }[m
