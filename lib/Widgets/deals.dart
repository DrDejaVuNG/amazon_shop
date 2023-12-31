import 'package:flutter/material.dart';

import '../Constants/url.dart';
import 'offer_list.dart';

class LightningDeals extends StatelessWidget {
  const LightningDeals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Lightning Deals',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Offerlist(
            length: 5,
            children: children2,
          ),
        ],
      ),
    );
  }
}

class OffrImage extends StatelessWidget {
  const OffrImage({
    super.key,
    required this.image,
    required this.amount,
    required this.name,
    required this.discount,
  });

  final String name;
  final String amount;
  final String image;
  final String discount;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ClipRRect(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.205,
              ),
            ),
            Text(name),
            Text('\u{20B9}$amount')
          ],
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.red,
          ),
          child: Center(
            child: Text(
              '$discount%',
              style: const TextStyle(color: Colors.white, fontSize: 13.0),
            ),
          ),
        ),
      ],
    );
  }
}
