import 'package:flutter/material.dart';
import 'package:training_page/view/pages/training_page.dart';
import 'package:training_page/view/widgets/section_widget.dart';

class TabViewPage extends StatefulWidget {
  const TabViewPage({super.key});

  @override
  State<TabViewPage> createState() => _TabViewPageState();
}

bool selected = false;

class _TabViewPageState extends State<TabViewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff6393c9),
          toolbarHeight: 70,
          title: Image.asset('assets/images/appbar.png'),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: selected ? const Text('Login') : const Text('Logout'),
            ),
          ],
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
