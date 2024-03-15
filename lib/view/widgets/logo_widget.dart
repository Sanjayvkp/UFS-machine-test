import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final String image;
  const LogoWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(image))),
    );
  }
}
