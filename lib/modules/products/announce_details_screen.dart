import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/products/pick_image_screen.dart';
import 'package:aqarat_app/modules/products/widgets/build_headLine_with_icon.dart';
import 'package:flutter/material.dart';

class AnnounceDetailsScreen extends StatefulWidget {
  @override
  _AnnounceDetailsScreenState createState() => _AnnounceDetailsScreenState();
}

class _AnnounceDetailsScreenState extends State<AnnounceDetailsScreen> {
  var selectAddress = TextEditingController();
  var otherNumber = TextEditingController();
  var detailsController = TextEditingController();

  var groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(
        context,
        title: 'تفاصيل الاعلان',
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
                icon: Icons.location_on_outlined,
                title: 'موفع السلعة',
              ),
              Row(
                children: [
                  const SizedBox(width: 30),
                  Text(
                    'الرياض',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(width: 50),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'تغير الموقع',
                        style: TextStyle(color: defaultColor, fontSize: 18),
                      )),
                ],
              ),
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
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      value: 1,
                      title: Text('رقم الجوال المسجل'),
                      groupValue: groupValue,
                      onChanged: (val) {
                        setState(() {
                          groupValue = val;
                          print(val);
                        });
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.42,
                    child: RadioListTile(
                      value: 2,
                      title: Text('رقم جوال اخر'),
                      groupValue: groupValue,
                      onChanged: (val) {
                        setState(() {
                          groupValue = val;
                          print(val);
                        });
                      },
                    ),
                  ),
                ],
              ),
              if (groupValue == 2)
                const SizedBox(height: 10),
              if (groupValue == 2)
                BuildHeadLineWithIcon(
                  icon: Icons.edit,
                  title: 'رقم جوال اخر',
                ),
              if (groupValue == 2)
                defaultFormField1(
                  radius: 0.0,
                  controller: otherNumber,
                  validator: (val) {},
                  type: TextInputType.number,
                  hint: 'اكتب رقم جوال اخر',
                ),
              if (groupValue == 2) const SizedBox(height: 20),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.info,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                      'يرجى العلم ان كتابة اي وسيلة تواصل أو سعر العقار داخل نص الاعلان سوف يعرض اعلانك للحذف',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              defaultButton(
                text: 'استمرار',
                onPressed: () {
                  navigateTo(context, PickImageScreen());
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
