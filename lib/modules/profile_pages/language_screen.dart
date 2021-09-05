import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/Home/home_layout.dart';
import 'package:aqarat_app/modules/products/widgets/build_category_item.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  var value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(context, title: 'اللفة'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              BuildCategoryItem(
                widget: Radio(
                  value: 1,
                  onChanged: (v) {
                    setState(() {
                      value = v;
                    });
                  },
                  groupValue: value,
                ),
                onTap: () {},
                imageIcon: 'assets/icons/saudi@2x.png',
                title: 'العربية',
              ),
              BuildCategoryItem(
                widget: Radio(
                  value: 2,
                  onChanged: (v) {
                    setState(() {
                      value = v;
                    });
                  },
                  groupValue: value,
                ),
                onTap: () {},
                imageIcon: 'assets/icons/america@2x.png',
                title: 'English',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: defaultButton(
            text: 'حفظ التعديلات',
            onPressed: () {
              navigateTo(context, HomeLayout());
            },
            btnColor: defaultColor,
            radius: 0.0),
      ),
    );
  }
}
