import 'package:flutter/material.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/screens/sura_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'El Messiri',
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        SuraScreen.routeName: (context) => SuraScreen(),
      },
      home: HomeScreen(),
    );
  }
}
