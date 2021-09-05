import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/Home/home_layout.dart';
import 'package:aqarat_app/modules/products/pick_image_screen.dart';
import 'package:aqarat_app/modules/products/widgets/build_headLine_with_icon.dart';
import 'package:flutter/material.dart';

class EditMyAnnounceScreen extends StatefulWidget {
  @override
  _EditMyAnnounceScreenState createState() => _EditMyAnnounceScreenState();
}

class _EditMyAnnounceScreenState extends State<EditMyAnnounceScreen> {
  var selectAddress = TextEditingController();
  var otherNumber = TextEditingController();
  var detailsController = TextEditingController();
  bool showPics = false;

  var groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(
        context,
        title: 'تعديل الاعلان',
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 10),
              BuildHeadLineWithIcon(
                icon: Icons.edit,
                title: 'عنوان الاعلان',
              ),
              defaultFormField1(
                radius: 0.0,
                sufIcon: Icon(Icons.arrow_drop_down),
                controller: selectAddress,
                validator: (val) {},
                type: TextInputType.text,
                hint: 'اختر عنوان الاعلان',
              ),
              const SizedBox(height: 10),
              BuildHeadLineWithIcon(
                icon: Icons.edit,
                title: 'نص الاعلان',
              ),
              defaultFormField(
                  controller: detailsController,
                  validator: (val) {},
                  radius: 0.0,
                  type: TextInputType.text,
                  hint: 'التفاصيل'),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              BuildHeadLineWithIcon(
                icon: Icons.edit,
                title: 'صور العقار',
              ),
              defaultFormField1(
                radius: 0.0,
                sufIcon: Icon(Icons.arrow_drop_down),
                controller: selectAddress,
                validator: (val) {},
                type: TextInputType.text,
                hint: 'صور العقار',
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: showPics,
                    onChanged: (val) {
                      setState(() {
                        showPics = val!;
                      });
                    },
                  ),
                  Container(
                    child: const Text(
                      'عرض الصور للمشاهدين',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              BuildHeadLineWithIcon(
                icon: Icons.edit,
                title: 'ادخل السعر',
              ),
              defaultFormField1(
                radius: 0.0,
                sufIcon: Icon(Icons.arrow_drop_down),
                controller: selectAddress,
                validator: (val) {},
                type: TextInputType.text,
                hint: 'ادخل السعر',
              ),
              const SizedBox(height: 10),
              BuildHeadLineWithIcon(
                icon: Icons.edit,
                title: 'اختر المدينة',
              ),
              defaultFormField1(
                radius: 0.0,
                sufIcon: Icon(Icons.arrow_drop_down),
                controller: selectAddress,
                validator: (val) {},
                type: TextInputType.text,
                hint: 'اختر المدينة',
              ),
              const SizedBox(height: 20),
              defaultButton(
                text: 'حفظ التعديلات',
                onPressed: () {
                  navigateTo(context, HomeLayout());
                },
                btnColor: defaultColor,
                radius: 0.0,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
