import 'package:flutter/material.dart';

class BuildProfileCard extends StatelessWidget {
  late final String image;

  late final String name;

  late final VoidCallback onTap;

  BuildProfileCard({
    required this.name,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Image.asset(
                '$image',
                height: 75,
              ),
            ),
            Text('\n$name'),
          ],
        ),
      ),
    );
  }
}
