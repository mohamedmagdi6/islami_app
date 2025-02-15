import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/models/ahdeeth_model.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:provider/provider.dart';

class HadethScreen extends StatefulWidget {
  const HadethScreen({super.key});
  static const routeName = 'hadethScreen';

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    var hadeethModel =
        ModalRoute.of(context)!.settings.arguments as AhadeethModel;
    return Stack(
      children: [
        Image.asset(provider.currentMode == ThemeMode.light
            ? 'assets/images/bg3.png'
            : 'assets/images/dark_bg.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'appBarTitle'.tr(),
            ),
          ),
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Card(
              color: provider.currentMode == ThemeMode.light
                  ? Colors.white.withOpacity(0.8)
                  : kDarkPrimaryColor.withOpacity(0.8),
              margin: const EdgeInsets.only(
                  left: 29, right: 29, top: 30, bottom: 80),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        hadeethModel.title,
                        style: TextStyle(
                          color: provider.currentMode == ThemeMode.light
                              ? kBlackColor
                              : kYeloowColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 41.5,
                    endIndent: 41.5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListView.builder(
                        itemCount: hadeethModel.content.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8, bottom: 8),
                            child: Text(
                              hadeethModel.content[index],
                              // textDirection: TextDirection.rtl,
                              style: provider.currentMode == ThemeMode.light
                                  ? Theme.of(context).textTheme.bodySmall
                                  : Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: kYeloowColor),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
