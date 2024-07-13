import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';

// ignore: must_be_immutable
class SebhaTab extends StatefulWidget {
  SebhaTab({
    super.key,
  });

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

int currentIndex = 0;
double turns = 0;
int numOfZekr = 0;
String zekr = 'سبحان الله';

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 14,
          child: Stack(
            children: [
              Positioned(
                  top: 25,
                  left: 190,
                  child: Image.asset('assets/images/head_sebha_logo.png')),
              Positioned(
                top: 100,
                left: 90,
                child: AnimatedRotation(
                  turns: turns,
                  duration: const Duration(milliseconds: 1),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          turns -= 0.035;
                          numOfZekr++;
                          changeZekr();
                          setState;
                        });
                      },
                      child: Image.asset('assets/images/body_sebha_logo.png')),
                ),
              ),
            ],
          ),
        ),
        const Expanded(
            flex: 2,
            child: Text(
              'عدد التسبيحات',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            )),
        Container(
          width: 69,
          height: 81,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(24)),
          child: Center(
            child: Text(
              '$numOfZekr',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontFamily: AutofillHints.addressState,
              ),
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          width: 137,
          height: 51,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(24)),
          child: Center(
            child: Text(
              zekr,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontFamily: AutofillHints.addressState,
              ),
            ),
          ),
        ),
        const Spacer(
          flex: 4,
        ),
      ],
    );
  }

  changeZekr() {
    if (numOfZekr == 33 && zekr == 'سبحان الله') {
      numOfZekr = 0;
      zekr = 'الحمدلله';
    } else if (numOfZekr == 33 && zekr == 'الحمدلله') {
      numOfZekr = 0;
      zekr = 'الله اكبر';
    } else if (numOfZekr == 33 && zekr == 'الله اكبر') {
      numOfZekr = 0;
      zekr = 'سبحان الله';
    } else {
      return;
    }
  }
}
