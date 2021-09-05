import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:aqarat_app/modules/products/confirm_paper.dart';
import 'package:aqarat_app/modules/products/widgets/build_category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProductCategory extends StatelessWidget {
  final int? id;

  const AddProductCategory({Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar1(
        context,
        title: id == 1 ? 'اضافه اعلان' : 'اضافه طلب جديد',
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              BuildCategoryItem(
                widget: Container(),
                onTap: () {
                  navigateTo(context, ConfirmPaperScreen());
                },
                imageIcon: 'assets/icons/sell@2x.png',
                title: 'عرض عقار للبيع',
              ),
              BuildCategoryItem(
                widget: Container(),
                onTap: () {
                  navigateTo(context, ConfirmPaperScreen());
                },
                imageIcon: 'assets/icons/rent@2x.png',
                title: 'عرض عقار للإيجار',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
