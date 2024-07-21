import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/models/sura_models.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:provider/provider.dart';

class SuraScreen extends StatefulWidget {
  const SuraScreen({super.key});
  static const routeName = 'suraScreen';

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  List<String> ayaat = [];
  @override
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModels;
    if (ayaat.isEmpty) {
      loadSura(suraModel.index);
    }

    return Stack(
      children: [
        Image.asset(provider.currentMode == ThemeMode.light
            ? 'assets/images/bg3.png'
            : 'assets/images/dark_bg.png'),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              'appBarTitle'.tr(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        suraModel.suraName,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                          fontFamily: 'Inter',
                          color: provider.currentMode == ThemeMode.light
                              ? KBlackColor
                              : kYeloowColor,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        FontAwesomeIcons.solidCirclePlay,
                        color: provider.currentMode == ThemeMode.light
                            ? KBlackColor
                            : kYeloowColor,
                        size: 27.2,
                      ),
                      SizedBox(
                        width: 60.5,
                      )
                    ],
                  ),
                  Divider(
                    color: provider.currentMode == ThemeMode.light
                        ? kPrimaryColor
                        : kYeloowColor,
                    thickness: 1,
                    indent: 41.5,
                    endIndent: 41.5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListView.builder(
                        itemCount: ayaat.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8, bottom: 8),
                            child: Text(
                              ayaat[index] + '(${index + 1})',
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
              color: provider.currentMode == ThemeMode.light
                  ? Colors.white.withOpacity(0.8)
                  : kDarkPrimaryColor.withOpacity(0.8),
              margin: EdgeInsets.only(left: 29, right: 29, top: 30, bottom: 80),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
          ),
        )
      ],
    );
  }

  loadSura(int index) async {
    String file =
        await rootBundle.loadString('assets/sura files/${index + 1}.txt');

    List<String> ayat = file.split('\n');
    ayaat = ayat;
    setState(() {});
  }
}
