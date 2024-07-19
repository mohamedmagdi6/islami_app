import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/models/ahdeeth_model.dart';
import 'package:islami_app/screens/hadeth_screen.dart';

class AhadeethTab extends StatefulWidget {
  AhadeethTab({super.key});

  @override
  State<AhadeethTab> createState() => _AhadeethTabState();
}

class _AhadeethTabState extends State<AhadeethTab> {
  List<AhadeethModel> ahadeethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeethList.isEmpty) {
      loadHadeethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10,
        ),
        Image.asset(
          'assets/images/hadeth_logo.png',
          height: 219,
        ),
        Divider(),
        Text(
          'الأحاديث',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Divider(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: ahadeethList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethScreen.routeName,
                      arguments: ahadeethList[index]);
                },
                child: Text(
                  ahadeethList[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            },
          ),
        ))
      ],
    );
  }

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
      setState(() {});
    });
  }
}
