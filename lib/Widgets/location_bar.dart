import 'package:flutter/material.dart';

class LocationBar extends StatelessWidget {
  const LocationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      color: const Color(0xffBBEBEB),
      child: const Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.black,
          ),
          Text('Deliver to london - Maximillian, Aisle 56'),
          Icon(Icons.keyboard_arrow_down_rounded)
        ],
      ),
    );
  }
}
