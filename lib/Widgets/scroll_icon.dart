import 'package:amazon_shop/Constants/url.dart';
import 'package:flutter/material.dart';

class ScrollIcons extends StatelessWidget {
  const ScrollIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 16,
          itemBuilder: (context, index) {
            return IconsAm(index: index);
          }),
    );
  }
}

class IconsAm extends StatelessWidget {
  const IconsAm({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 4.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage(
              categoryImages[index]['image']!,
            ),
          ),
        ),
        Text(categoryImages[index]['title']!),
      ],
    );
  }
}
