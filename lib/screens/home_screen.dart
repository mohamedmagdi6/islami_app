import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/taps/ahadeeth_tab.dart';
import 'package:islami_app/taps/quraan_tab.dart';
import 'package:islami_app/taps/radio_tab.dart';
import 'package:islami_app/taps/sebha_tab.dart';
import 'package:islami_app/taps/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const routName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset('assets/images/bg3.png'),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text(
              'إسلامي',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              iconSize: 50,
              type: BottomNavigationBarType.shifting,
              currentIndex: currentIndex,
              onTap: (value) {
                currentIndex = value;
                setState(() {});
              },
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: '',
                  backgroundColor: kPrimaryColor,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: '',
                  backgroundColor: kPrimaryColor,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: '',
                  backgroundColor: kPrimaryColor,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: '',
                  backgroundColor: kPrimaryColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: '',
                  backgroundColor: kPrimaryColor,
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
