import 'package:flutter/material.dart';
import 'package:training_page/view/pages/training_page.dart';
import 'package:training_page/view/widgets/section_widget.dart';

class TabViewPage extends StatelessWidget {
  const TabViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color.fromARGB(255, 191, 226, 255),
          title: Image.asset('assets/images/appbar.png'),
          bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              indicatorColor: Colors.amber,
              dividerHeight: 0,
              tabs: [
                SizedBox(
                  height: 60,
                  child: Tab(
                    child: SectionWidget(
                      image: 'assets/images/training.png',
                      title: 'Training',
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Tab(
                    child: SectionWidget(
                      image: 'assets/images/search.png',
                      title: 'Inspection',
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Tab(
                    child: SectionWidget(
                      image: 'assets/images/settings.png',
                      title: 'Calibration',
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          const TrainingPage(),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.red,
          )
        ]),
      ),
    );
  }
}
