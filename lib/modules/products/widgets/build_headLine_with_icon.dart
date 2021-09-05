import 'package:flutter/material.dart';

class BuildHeadLineWithIcon extends StatelessWidget {
  final icon;
  final title;

  const BuildHeadLineWithIcon({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        const SizedBox(width: 8),
        Text(title),
      ],
    );
  }
}
