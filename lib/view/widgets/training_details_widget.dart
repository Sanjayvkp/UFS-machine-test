import 'package:flutter/material.dart';

class TrainingWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String number;
  const TrainingWidget(
      {super.key,
      required this.color,
      required this.number,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 172,
      height: 60,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            CircleAvatar(
              radius: 10,
              child: Text(
                number,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 47, 51, 96),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
