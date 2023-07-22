import 'package:flutter/material.dart';

class PayCont extends StatelessWidget {
  const PayCont({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(5.0),
        width: width * 0.45,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.0, 0.0),
              blurRadius: 3.0,
              spreadRadius: 0.0,
              color: Colors.black,
            ),
          ],
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: child);
  }
}
