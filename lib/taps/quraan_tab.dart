import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/models/sura_models.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:islami_app/screens/sura_screen.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class QuraanTab extends StatelessWidget {
  QuraanTab({super.key});

  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<String> numberOfAyat = [
    "7",
    "286",
    "200",
    "176",
    "120",
    "165",
    "206",
    "75",
    "129",
    "109",
    "123",
    "111",
    "43",
    "52",
    "99",
    "128",
    "111",
    "110",
    "98",
    "135",
    "112",
    "78",
    "118",
    "64",
    "77",
    "227",
    "93",
    "88",
    "69",
    "60",
    "34",
    "30",
    "73",
    "54",
    "45",
    "83",
    "182",
    "88",
    "75",
    "85",
    "54",
    "53",
    "89",
    "59",
    "37",
    "35",
    "38",
    "29",
    "18",
    "45",
    "60",
    "49",
    "62",
    "55",
    "78",
    "96",
    "29",
    "22",
    "24",
    "13",
    "14",
    "11",
    "11",
    "18",
    "12",
    "12",
    "30",
    "52",
    "52",
    "44",
    "28",
    "28",
    "20",
    "56",
    "40",
    "31",
    "50",
    "40",
    "46",
    "42",
    "29",
    "19",
    "36",
    "25",
    "22",
    "17",
    "19",
    "26",
    "30",
    "20",
    "15",
    "21",
    "11",
    "8",
    "8",
    "19",
    "5",
    "8",
    "8",
    "11",
    "11",
    "8",
    "3",
    "9",
    "5",
    "4",
    "7",
    "3",
    "6",
    "3",
    "5",
    "4",
    "5",
    "6"
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    return Column(
      children: [
        Image.asset('assets/images/qur2an_screen_logo.png'),
        const SizedBox(
          height: 5,
        ),
        Table(
          border: TableBorder(
              top: BorderSide(
                width: 3,
                color: provider.currentMode == ThemeMode.light
                    ? kPrimaryColor
                    : kYeloowColor,
              ),
              bottom: BorderSide(
                width: 3,
                color: provider.currentMode == ThemeMode.light
                    ? kPrimaryColor
                    : kYeloowColor,
              ),
              verticalInside: BorderSide(
                color: provider.currentMode == ThemeMode.light
                    ? kPrimaryColor
                    : kYeloowColor,
                width: 3,
              )),
          children: [
            TableRow(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                child: Text(
                  'numberOfVerses'.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                child: Text('suraName'.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w600)),
              ),
            ])
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Table(
                border: TableBorder(
                    verticalInside: BorderSide(
                  color: provider.currentMode == ThemeMode.light
                      ? kPrimaryColor
                      : kYeloowColor,
                  width: 3,
                )),
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        ListView.builder(
                            padding: const EdgeInsets.only(
                              top: 16,
                              bottom: 16,
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: suraName.length,
                            itemBuilder: (context, index) {
                              return Center(
                                child: Text(numberOfAyat[index],
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(fontFamily: 'Inter')),
                              );
                            })
                      ],
                    ),
                    Column(
                      children: [
                        ListView.builder(
                            padding: const EdgeInsets.only(
                              top: 16,
                              bottom: 16,
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: suraName.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SuraScreen.routeName,
                                      arguments:
                                          SuraModels(suraName[index], index));
                                },
                                child: Center(
                                  child: Text(suraName[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontFamily: 'Inter')),
                                ),
                              );
                            })
                      ],
                    )
                  ])
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
