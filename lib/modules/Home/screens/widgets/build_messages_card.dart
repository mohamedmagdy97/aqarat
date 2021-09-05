import 'package:aqarat_app/components/colors.dart';
import 'package:flutter/material.dart';

class BuildMessagesCard extends StatelessWidget {
  late final String name;
  late final String time;

  late final String txt1;
  late final String txt2;
  late final String txt3;

  VoidCallback onTap;

  BuildMessagesCard({
    required this.name,
    required this.time,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.person_outline),
                    Text(name),
                    Spacer(),
                    Text(time),
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('$txt1')),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text('$txt2'),
                      Text(
                        '#$txt3',
                        style: TextStyle(color: defaultColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
