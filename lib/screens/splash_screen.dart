import 'package:flutter/material.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    return Stack(
      children: [
        Image.asset(provider.currentMode == ThemeMode.light
            ? 'assets/images/bg2.png'
            : 'assets/images/dark_bg.png'),
        Scaffold(
          body: Center(
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  provider.currentMode == ThemeMode.light
                      ? 'assets/images/logo2.png'
                      : 'assets/images/default_bg.png',
                  width: 262,
                  height: 262,
                ),
                const Spacer(),
                Image.asset(
                  provider.currentMode == ThemeMode.light
                      ? 'assets/images/route_light.png'
                      : 'assets/images/routeyellow.png',
                  width: 139,
                  height: 244,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
