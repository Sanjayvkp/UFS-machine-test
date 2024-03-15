import 'package:flutter/material.dart';

class CustomerWidget extends StatelessWidget {
  const CustomerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 190,
          width: 360,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              ),
              color: Colors.transparent),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/title.png'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                          'Contrary to popular belief, Lorem\nIpsum is not simply random text. It\nhas roots in a piece of classical\nLatin literature from 45 BC'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Jerin Thomas',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('CEO & CO-FOUNDER OF ARABIC'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Positioned(
          left: 10,
          top: 26,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
        ),
        Positioned(
          left: 5,
          bottom: 10,
          child: Image.asset('assets/images/Mask group.png'),
        ),
        Positioned(
          bottom: 26,
          left: 75,
          child: Container(
            height: 30,
            width: 2,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
