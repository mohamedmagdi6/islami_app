import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/providers/mode_provider.dart';
import 'package:islami_app/widgets/language_modal_bottom_sheet.dart';
import 'package:islami_app/widgets/theme_modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ModeProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            'theme'.tr(),
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 28, fontFamily: 'Inter'),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  isDismissible: false,
                  context: context,
                  builder: (context) {
                    return const ThemeModalBottomSheet();
                  });
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                provider.currentMode == ThemeMode.light
                    ? 'light'.tr()
                    : 'dark'.tr(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'language'.tr(),
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 28, fontFamily: 'Inter'),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  isDismissible: false,
                  context: context,
                  builder: (context) {
                    return const LanguageModalBottomSheet();
                  });
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                'arabic'.tr(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
