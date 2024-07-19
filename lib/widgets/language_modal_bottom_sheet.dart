import 'package:flutter/material.dart';

class LanguageModalBottomSheet extends StatelessWidget {
  const LanguageModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Arabic',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Icon(Icons.done)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Icon(Icons.done)
              ],
            )
          ],
        ),
      ),
    );
  }
}
