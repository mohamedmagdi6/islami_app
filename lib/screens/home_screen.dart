import 'package:flutter/material.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:islami_app/taps/ahadeeth_tab.dart';
import 'package:islami_app/taps/quraan_tab.dart';
import 'package:islami_app/taps/radio_tab.dart';
import 'package:islami_app/taps/sebha_tab.dart';
import 'package:islami_app/taps/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const routName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    return Stack(children: [
      Image.asset(provider.currentMode == ThemeMode.light
          ? 'assets/images/bg3.png'
          : 'assets/images/dark_bg.png'),
      Scaffold(
          appBar: AppBar(
            title: const Text(
              'إسلامي',
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                currentIndex = value;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: '',
                ),
              ]),
          body: tabs[currentIndex]),
    ]);
  }

  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    AhadeethTab(),
    QuraanTab(),
    SettingsTab()
  ];
}
