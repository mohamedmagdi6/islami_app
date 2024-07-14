import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';

class QuraanTab extends StatelessWidget {
  const QuraanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/qur2an_screen_logo.png'),
        SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 3,
          color: kPrimaryColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'اسم السورة',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            Text(
              'اسم السورة',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 3,
          color: kPrimaryColor,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Table(
                border: TableBorder(
                    verticalInside: BorderSide(
                  color: kPrimaryColor,
                  width: 3,
                )),
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 50,
                            itemBuilder: (context, index) {
                              return Text('5052');
                            })
                      ],
                    ),
                    Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 50,
                            itemBuilder: (context, index) {
                              return Text('البقره');
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

class QuraanRoq extends StatelessWidget {
  const QuraanRoq({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [],
            ),
          ),
        ),
        Container(
          width: 3,
          height: 1000,
          color: kPrimaryColor,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Text('data'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
