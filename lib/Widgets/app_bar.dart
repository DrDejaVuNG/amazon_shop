import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0.0, 15.0, 1.0, 15.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Amazon.in',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt)),
            ),
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic_rounded,
              color: Colors.black,
            )),
      ],
    );
  }
}
