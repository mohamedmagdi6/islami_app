import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/models/ahdeeth_model.dart';
import 'package:islami_app/providers/load_hadeeth_provider.dart';
import 'package:islami_app/screens/hadeth_screen.dart';
import 'package:provider/provider.dart';

class AhadeethTab extends StatelessWidget {
  const AhadeethTab({super.key});

  @override
  Widget build(BuildContext context) {
    var loadHadeethPorv = Provider.of<LoadHadeethProvider>(context)
      ..loadHadeethFile();
    List<AhadeethModel> ahadeethList = loadHadeethPorv.ahadeethList;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          'assets/images/hadeth_logo.png',
          height: 219,
        ),
        const Divider(),
        Text(
          'ahadeeth'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Divider(),
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
}
