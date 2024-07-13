import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
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
          'إذاعة القرآن الكريم',
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
                  color: kPrimaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  color: kPrimaryColor,
                  size: 34,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next_sharp,
                  color: kPrimaryColor,
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
