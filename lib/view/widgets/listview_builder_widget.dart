import 'package:flutter/material.dart';
import 'package:training_page/view/widgets/container_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> texts = ['Zipline Training', 'Climbing Training'];
    final List<String> images = [
      'https://media.istockphoto.com/id/1378246674/photo/female-skydiver-falls-out-of-airplane-aerial-flight.webp?b=1&s=170667a&w=0&k=20&c=AsZunke6a7bKFc8ZcsSidKA49LD1--vjfZ7RHRvGy5k=',
      'https://c4.wallpaperflare.com/wallpaper/231/360/54/cool-fly-jump-jumpers-wallpaper-preview.jpg'
    ];
    return SizedBox(
      height: 260,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ContainerWidget(
            text: texts[index],
            url: images[index],
          );
        },
      ),
    );
  }
}
