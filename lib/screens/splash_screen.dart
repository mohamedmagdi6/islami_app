import 'package:flutter/material.dart';
import 'package:islami_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              children: [
                Spacer(),
                Image.asset(
                  'assets/images/appstore.png',
                  width: 262,
                  height: 262,
                ),
                Spacer(),
                Image.asset(
                  'assets/images/1ebf2d114a74732b9b16454d85cd025b.png',
                  width: 139,
                  height: 139,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
