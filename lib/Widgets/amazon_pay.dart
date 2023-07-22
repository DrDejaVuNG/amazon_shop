import 'package:flutter/material.dart';

import '../Constants/url.dart';

class AmazonPay extends StatelessWidget {
  const AmazonPay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            PayIcon(index: 0),
            PayIcon(index: 1),
          ],
        ),
        Row(
          children: [
            PayIcon(index: 2),
            PayIcon(index: 3),
          ],
        ),
      ],
    );
  }
}

class PayIcon extends StatelessWidget {
  const PayIcon({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.only(left: 8),
          child: CircleAvatar(
            radius: 25.5,
            backgroundImage: AssetImage(
              amaPay[index]['image']!,
            ),
          ),
        ),
        Text(
          amaPay[index]['title']!,
          style: const TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}
