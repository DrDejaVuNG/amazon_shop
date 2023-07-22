import 'package:amazon_shop/Widgets/pay_cont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Offerlist extends StatelessWidget {
  const Offerlist({
    super.key,
    required this.length,
    required this.children,
  });

  final List<Widget> children;
  final int length;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: length,
          itemBuilder: (context, index) {
            return PayCont(child: children[index]);
          }),
    );
  }
}
