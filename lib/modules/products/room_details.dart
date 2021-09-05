import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/Home/home_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomDetails extends StatelessWidget {
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(context,
          title: '',
          leadingIcon: IconButton(onPressed: () {}, icon: Icon(Icons.share))),
      backgroundColor: bgColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Image.asset(
              'assets/images/bdroom.jpg',
              height: 180,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 120,
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'فلل للايجار',
                    style: TextStyle(
                        color: defaultColor, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('قبل 16 دقيقة'),
                      Text('#5656262'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.person_outline),
                      Text('اسم المستخدم'),
                      Spacer(),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      Text('الرياض'),
                    ],
                  ),
                ],
              ),
            ),
            buildRowItem(
              context,
              iconImage: 'assets/icons/map@2x.png',
              txt: '24 شارع التخصصي',
            ),
            buildRowItem(
              context,
              iconImage: 'assets/icons/price@2x.png',
              txt: '250 ر.س',
            ),
            buildRowItem(
              context,
              iconImage: 'assets/icons/calendar@2x.png',
              txt: '20/7/2021',
            ),
            buildRowItem(
              context,
              iconImage: 'assets/icons/housedesc@2x.png',
              txt: '4 غرفة نوم - 3 صالة - 2 دورة مياه - 800م',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: defaultButton(
          text: 'إرسال رسالة',
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                titlePadding: EdgeInsets.zero,
                title: Container(
                    color: defaultColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon:
                                Icon(Icons.close, color: bgColor)),
                        Text(
                          'إرسال رساله',
                          style: TextStyle(color: bgColor),
                        ),
                      ],
                    )),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    defaultFormField(
                        controller: controller,
                        validator: (val) {},
                        radius: 2.0,
                        type: TextInputType.text,
                        hint: 'اكتب رسالتك'),
                    SizedBox(height: 10),
                    defaultButton(
                        text: 'إرسال',
                        radius: 0.0,
                        onPressed: () {
                          navigateTo(context, HomeLayout());
                        },
                        btnColor: defaultColor),
                  ],
                ),
              ),
            );
          },
          btnColor: defaultColor,
          radius: 0,
        ),
      ),
    );
  }
}
