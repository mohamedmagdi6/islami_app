import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';
import 'package:islami_app/models/ahdeeth_model.dart';

class HadethScreen extends StatefulWidget {
  HadethScreen({super.key});
  static const routeName = 'hadethScreen';

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  @override
  Widget build(BuildContext context) {
    var hadeethModel =
        ModalRoute.of(context)!.settings.arguments as AhadeethModel;
    return Stack(
      children: [
        Image.asset('assets/images/bg3.png'),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text(
              'إسلامي',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Card(
              color: Colors.white.withOpacity(0.8),
              margin: EdgeInsets.only(left: 29, right: 29, top: 30, bottom: 80),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        hadeethModel.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: kPrimaryColor,
                    thickness: 1,
                    indent: 41.5,
                    endIndent: 41.5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListView.builder(
                        itemCount: hadeethModel.content.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8, bottom: 8),
                            child: Text(
                              hadeethModel.content[index],
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
