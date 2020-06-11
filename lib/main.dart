import 'package:flutter/material.dart';
import 'package:webpagetransition/Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

//IN this project, I am trying to use PageView/pageView Builder to try the scroll effect
//the effect includes: when reaches that page, the animation starts + only when reaches the page, the build method starts
//practice the responsive layout
//redo the animation - simple animation package, animated opacity, animated container
