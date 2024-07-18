import 'package:flutter/material.dart';
import 'package:islami_app/helper/my_them_data.dart';
import 'package:islami_app/screens/hadeth_screen.dart';
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
      themeMode: ThemeMode.light,
      theme: MyThemData.lightTheme,
      darkTheme: MyThemData.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        SuraScreen.routeName: (context) => SuraScreen(),
        HadethScreen.routeName: (context) => HadethScreen(),
      },
      home: SplashScreen(),
    );
  }
}
