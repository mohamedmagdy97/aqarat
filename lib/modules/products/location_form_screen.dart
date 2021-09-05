import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/products/success_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/build_headLine_with_icon.dart';

class LocationFormScreen extends StatelessWidget {
  var price = TextEditingController();

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
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              BuildHeadLineWithIcon(
                icon: Icons.edit,
                title: 'اختر المدينة',
              ),
              defaultFormField1(
                radius: 0.0,
                controller: price,
                validator: (val) {},
                type: TextInputType.number,
                hint: 'اختر المدينة',
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.5,
                color: Colors.grey[100],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: defaultButton(
            text: 'استمرار',
            onPressed: () {
              navigateTo(context, SuccessScreen());
            },
            btnColor: defaultColor,
            radius: 0.0),
      ),
    );
  }
}
