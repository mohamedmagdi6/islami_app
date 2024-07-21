import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/helper/my_them_data.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:islami_app/screens/hadeth_screen.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/screens/sura_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: [Locale('en'), Locale('ar')],
    path:
        'assets/translaltions', // <-- change the path of the translation files
    // fallbackLocale: Locale('en', 'US'),
    child: ChangeNotifierProvider(
        create: (context) => ModeProvider()..saveTheme(), child: const MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      themeMode: provider.currentMode,
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
