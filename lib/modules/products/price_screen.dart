import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/products/location_form_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/build_headLine_with_icon.dart';

class PriceScreen extends StatelessWidget {
  var price=TextEditingController();

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
            children: [
              BuildHeadLineWithIcon(
                icon: Icons.edit,
                title: 'ادخل السعر',
              ),
                defaultFormField1(
                  radius: 0.0,
                  controller: price,
                  validator: (val) {},
                  type: TextInputType.number,
                  hint: 'ادخل السعر',
                ),          ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: defaultButton(
            text: 'استمرار',
            onPressed: () {
              navigateTo(context, LocationFormScreen());
            },
            btnColor: defaultColor,
            radius: 0.0),
      ),
    );
  }
}
