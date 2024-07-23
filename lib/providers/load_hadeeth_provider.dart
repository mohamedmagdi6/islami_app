import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/ahdeeth_model.dart';

class LoadHadeethProvider extends ChangeNotifier {
  List<AhadeethModel> ahadeethList = [];
  loadHadeethFile() {
    rootBundle.loadString('assets/ahdeeth/ahadeth.txt').then((value) {
      List<String> ahadeeth = value.split('#');
      for (int i = 0; i < ahadeeth.length; i++) {
        String everyHadeeth = ahadeeth[i];
        List<String> hadeethLines = everyHadeeth.trim().split('\n');
        String title = hadeethLines[0];
        hadeethLines.removeAt(0);
        List<String> content = hadeethLines;
        AhadeethModel hadeethModel = AhadeethModel(title, content);
        ahadeethList.add(hadeethModel);
      }

      notifyListeners();
    });
  }
}
