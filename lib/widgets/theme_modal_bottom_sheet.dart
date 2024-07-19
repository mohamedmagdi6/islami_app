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
                    'Light',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Icon(Icons.done)
                ],
              ),
            ),
            SizedBox(
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
                    'Dark',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Icon(Icons.done)
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
