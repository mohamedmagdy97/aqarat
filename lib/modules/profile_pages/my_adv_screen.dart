import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/profile_pages/edit_my_announce_screen.dart';
import 'package:flutter/material.dart';

class MyAdvScreen extends StatelessWidget {
  const MyAdvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(context, title: 'إعلاناتي'),
      backgroundColor: bgColor,
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/bdroom.jpg',
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('فلل للإيجار'),
                            buildRowItem(context,
                                iconImage: 'assets/icons/map@2x.png',
                                txt: '24 شارع التخصصي'),
                            buildRowItem(context,
                                iconImage: 'assets/icons/price@2x.png',
                                txt: '250 رس'),
                            buildRowItem(context,
                                iconImage: 'assets/icons/calendar@2x.png',
                                txt: '20/7/2021'),
                            buildRowItem(context,
                                iconImage: 'assets/icons/housedesc@2x.png',
                                txt:
                                    '4 غرفة نوم - 3 صالة - 2 دورة مياه - 800م'),
                          ],
                        ),
                      )
                    ],
                  ),
                  myDivider(
                    context,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      defaultButton(
                          text: 'تعديل',
                          onPressed: () {
                            navigateTo(context, EditMyAnnounceScreen());
                          },
                          height: 40.0,
                          btnColor: defaultColor,
                          width: MediaQuery.of(context).size.width * 0.35),
                      defaultButton(
                          text: 'حذف',
                          onPressed: () {},
                          btnColor: Colors.red,
                          height: 40.0,
                          width: MediaQuery.of(context).size.width * 0.35),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
