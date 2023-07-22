import 'package:amazon_shop/Constants/url.dart';
import 'package:amazon_shop/Widgets/app_bar.dart';
import 'package:amazon_shop/Widgets/offer_list.dart';
import 'package:amazon_shop/Widgets/scroll_icon.dart';
import 'package:amazon_shop/Widgets/video_player.dart';
import 'package:flutter/material.dart';

import '../Widgets/deals.dart';
import '../Widgets/location_bar.dart';
import '../Widgets/carousel.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const TitleBar(),
      ),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LocationBar(),
                const ScrollIcons(),
                const SizedBox(height: 5.0),
                SizedBox(
                    width: width,
                    height: height * 0.3,
                    child: const CarouselWithIndicatorDemo()),
                Offerlist(
                  length: 5,
                  children: children,
                ),
                const SizedBox(height: 5.0),
                const VideoPlayer(),
                const SizedBox(height: 5.0),
                const LightningDeals(),
                const SizedBox(height: 5.0),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 4.0),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30.0,
              backgroundImage: AssetImage(
                'assets/images/alexa.png',
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        onTap: (int index) {
          onTapHandler(index);
        },
      ),
    );
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
