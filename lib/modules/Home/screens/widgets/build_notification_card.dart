import 'package:flutter/material.dart';

class BuildNotificationCard extends StatelessWidget {
  late final String image;
  late final String title;
  late final String time;

  late final String icon1;
  late final String icon2;
  late final String icon3;

  late final String txt1;
  late final String txt2;
  late final String txt3;

  late final String txt11;
  late final String txt22;

  BuildNotificationCard({
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.time,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.title,
    required this.image,
    required this.txt11,
    required this.txt22,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('$image'),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(title),
                          Text(time),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('$icon1'),
                          const SizedBox(width: 10),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(txt1))
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('$icon2'),
                          const SizedBox(width: 10),
                          Text(txt2)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('$icon3'),
                          const SizedBox(width: 10),
                          Text(txt3)
                        ],
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
         const SizedBox(height: 10),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('$image'),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(time),
                        ],
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(txt11)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(txt22)),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
