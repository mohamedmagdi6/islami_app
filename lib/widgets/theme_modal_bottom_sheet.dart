import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:provider/provider.dart';

class ThemeModalBottomSheet extends StatelessWidget {
  const ThemeModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: provider.currentMode == ThemeMode.light
            ? Colors.white
            : kDarkPrimaryColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                provider.changeMode(ThemeMode.light);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'light'.tr(),
                    style: provider.currentMode == ThemeMode.light
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: kYeloowColor)
                        : Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white),
                  ),
                  Icon(
                    Icons.done,
                    color: provider.currentMode == ThemeMode.light
                        ? kYeloowColor
                        : Colors.transparent,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                provider.changeMode(ThemeMode.dark);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'dark'.tr(),
                    style: provider.currentMode == ThemeMode.dark
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: kYeloowColor)
                        : Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: kBlackColor),
                  ),
                  Icon(
                    Icons.done,
                    color: provider.currentMode == ThemeMode.dark
                        ? kYeloowColor
                        : Colors.transparent,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
