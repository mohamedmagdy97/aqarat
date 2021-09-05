import 'package:aqarat_app/components/colors.dart';
import 'package:flutter/material.dart';

class BuildHomeCard extends StatelessWidget {
  late final String image;

  late final String title;

  late final String icon1;

  late final String icon2;

  late final String icon3;

  late final String icon4;

  late final String txt1;

  late final String txt2;

  late final String txt3;

  late final String txt4;
  VoidCallback onTap;

  BuildHomeCard({
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.icon4,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.txt4,
    required this.title,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    '$image',
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$title'),
                    buildRow(context, icon: icon1, text: txt1),
                    buildRow(context, icon: icon2, text: txt2),
                    buildRow(context, icon: icon3, text: txt3),
                    buildRow(context, icon: icon4, text: txt4),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildRow(context, {icon, text}) {
    return Row(
      children: [
        Image.asset(
          '$icon',
          height: 25,
        ),
        const SizedBox(width: 10),
        Container(
          width: MediaQuery.of(context).size.width * 0.55,
          child: Text(
            '$text',
            style: TextStyle(color: thirdColor, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
