import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final String text;
  final String url;
  const ContainerWidget({super.key, required this.text, required this.url});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 235,
          width: 235,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  'Experience the ultimate thrill\nwith our Zipine Training\nprogram,',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  width: 200,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.30),
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            'Take a look',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'AED ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 110, 103, 103)),
                          children: <TextSpan>[
                            TextSpan(
                                text: '1500',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const Positioned(
          right: 10,
          top: 20,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.orange,
            child: Icon(
              Icons.star,
              color: Colors.white,
              size: 14,
            ),
          ),
        )
      ],
    );
  }
}
