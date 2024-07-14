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
        Table(
          border: TableBorder(
              bottom: BorderSide(
                color: kPrimaryColor,
                width: 3,
              ),
              top: BorderSide(
                color: kPrimaryColor,
                width: 3,
              ),
              verticalInside: BorderSide(
                color: kPrimaryColor,
                width: 3,
              )),
          children: [
            TableRow(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                child: Text(
                  'اسم السورة',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                child: Text(
                  'اسم السورة',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
              ),
            ])
          ],
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
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 16, left: 60),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 50,
                            itemBuilder: (context, index) {
                              return Text(
                                '253',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                ),
                              );
                            })
                      ],
                    ),
                    Column(
                      children: [
                        ListView.builder(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 16, left: 80),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 50,
                            itemBuilder: (context, index) {
                              return Text(
                                'البقره',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                ),
                              );
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
