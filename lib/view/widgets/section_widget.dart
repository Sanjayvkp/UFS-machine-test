import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final String image;
  final String title;

  const SectionWidget({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(image),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
