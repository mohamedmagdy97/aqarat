import 'package:aqarat_app/components/colors.dart';
import 'package:aqarat_app/components/components.dart';
import 'package:flutter/material.dart';

class BuildCategoryItem extends StatelessWidget {
  final imageIcon ;
  final title;
  VoidCallback onTap;
  Widget? widget ;

  BuildCategoryItem({ this.imageIcon, this.title,required this.onTap, this.widget});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Image.asset(
              '$imageIcon',
              height: 30,
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: onTap,
              child: Text(
                title,
                style: TextStyle(color: defaultColor, fontSize: 22),
              ),

            ),
            Spacer(),

            widget!,
          ],
        ),
        myDivider(context),
      ],
    );
  }
}
