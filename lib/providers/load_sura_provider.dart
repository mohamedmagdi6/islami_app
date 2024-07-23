import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoadSuraProvider extends ChangeNotifier {
  List<String> ayaat = [];
  loadSura(int index) async {
    String file =
        await rootBundle.loadString('assets/sura files/${index + 1}.txt');

    List<String> ayat = file.split('\n');
    ayaat = ayat;
  }

  @override
  void notifyListeners() {
    super.notifyListeners();
  }
}
