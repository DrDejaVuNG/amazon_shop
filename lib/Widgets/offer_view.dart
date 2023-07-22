import 'package:flutter/material.dart';

class OfferImage extends StatelessWidget {
  const OfferImage({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
