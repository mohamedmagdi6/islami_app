import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    return Column(
      children: [
        Spacer(
          flex: 3,
        ),
        Image.asset('assets/images/radio_image.png'),
        Spacer(
          flex: 1,
        ),
        Text(
          'alquranAlkareemRadio'.tr(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous_sharp,
                  color: provider.currentMode == ThemeMode.light
                      ? kPrimaryColor
                      : kYeloowColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  color: provider.currentMode == ThemeMode.light
                      ? kPrimaryColor
                      : kYeloowColor,
                  size: 34,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next_sharp,
                  color: provider.currentMode == ThemeMode.light
                      ? kPrimaryColor
                      : kYeloowColor,
                )),
          ],
        ),
        Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
