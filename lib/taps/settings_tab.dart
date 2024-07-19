import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/widgets/language_modal_bottom_sheet.dart';
import 'package:islami_app/widgets/theme_modal_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Theme',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 28, fontFamily: 'Inter'),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  isDismissible: false,
                  context: context,
                  builder: (context) {
                    return ThemeModalBottomSheet();
                  });
            },
            child: Container(
              child: Text(
                'Light',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Language',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 28, fontFamily: 'Inter'),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  isDismissible: false,
                  context: context,
                  builder: (context) {
                    return LanguageModalBottomSheet();
                  });
            },
            child: Container(
              child: Text(
                'Arabic',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
        ],
      ),
    );
  }
}
