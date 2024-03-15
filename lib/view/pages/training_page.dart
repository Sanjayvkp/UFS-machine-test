import 'package:flutter/material.dart';
import 'package:training_page/view/widgets/customer_widget.dart';
import 'package:training_page/view/widgets/listview_builder_widget.dart';
import 'package:training_page/view/widgets/logo_widget.dart';
import 'package:training_page/view/widgets/training_details_widget.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> logos = [
      'assets/images/image 5.png',
      'assets/images/nasp.png',
      'assets/images/image 5.png'
    ];
    final List<String> clients = [
      'assets/images/enoc.png',
      'assets/images/global.png',
      'assets/images/enoc.png'
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 192, 222, 246),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TrainingWidget(
                      color: Color.fromARGB(255, 220, 213, 251),
                      number: '10',
                      title: 'Total Training \nAttended',
                    ),
                    TrainingWidget(
                      color: Color.fromARGB(255, 255, 206, 241),
                      number: '6',
                      title: 'Upcoming \nTrainings',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Explore our\nvarious',
                      style: TextStyle(
                          color: Color.fromARGB(255, 47, 51, 96),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' training',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured Training',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 47, 51, 96),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 16,
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: ListViewWidget(),
              ),
              const Row(
                children: [
                  Text(
                    'Accreditation',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 47, 51, 96),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return LogoWidget(
                        image: logos[index],
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Text(
                    'See what our customer says',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 47, 51, 96),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SizedBox(
                  height: 190,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                    itemCount: 2,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const CustomerWidget();
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Text(
                    'Our Clients',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 47, 51, 96),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return LogoWidget(
                        image: clients[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
