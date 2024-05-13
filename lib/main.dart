import 'package:flutter/material.dart';
import 'package:ujjawalsportfolio/Variable.dart';
import 'package:ujjawalsportfolio/Views/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: NAME,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.lightBlue,
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Ubuntu',
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.white,
            // fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.4,
          ),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.black,
        // primaryColorDark: Colors.black12,
        primaryColorLight: Colors.yellow,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.white,
            // fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.4,
          ),
        ),
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Ubuntu',
      ),
      // home: SplashScreenScreen(),
      home: Home(),
    );
  }
}
