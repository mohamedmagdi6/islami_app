import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:provider/provider.dart';

class LanguageModalBottomSheet extends StatelessWidget {
  const LanguageModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                context.setLocale(Locale('ar'));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'arabic'.tr(),
                    style: context.locale == Locale('ar')
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: kYeloowColor)
                        : Theme.of(context).textTheme.bodyMedium,
                  ),
                  Icon(
                    Icons.done,
                    color: context.locale == Locale('ar')
                        ? kYeloowColor
                        : Colors.transparent,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                context.setLocale(Locale('en'));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'english'.tr(),
                    style: context.locale == Locale('en')
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: kYeloowColor)
                        : Theme.of(context).textTheme.bodyMedium,
                  ),
                  Icon(
                    Icons.done,
                    color: context.locale == Locale('en')
                        ? kYeloowColor
                        : Colors.transparent,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: provider.currentMode == ThemeMode.light
            ? Colors.white
            : kDarkPrimaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    );
  }
}
