import 'package:amazon_shop/Widgets/amazon_pay.dart';
import 'package:amazon_shop/Widgets/offer_view.dart';
import 'package:flutter/cupertino.dart';

import '../Widgets/deals.dart';

const List<Map<String, String>> categoryImages = [
  {
    'title': 'Prime',
    'image': 'assets/images/icons/prime.png',
  },
  {
    'title': 'Mobiles',
    'image': 'assets/images/icons/mobiles.png',
  },
  {
    'title': 'Deals',
    'image': 'assets/images/icons/deals.jpg',
  },
  {
    'title': 'Fresh',
    'image': 'assets/images/icons/fresh.png',
  },
  {
    'title': 'Fashion',
    'image': 'assets/images/icons/fashion.jpg',
  },
  {
    'title': 'miniTV',
    'image': 'assets/images/icons/movies.png',
  },
  {
    'title': 'Travel',
    'image': 'assets/images/icons/travel.png',
  },
  {
    'title': 'Electronics',
    'image': 'assets/images/icons/Electronics.png',
  },
  {
    'title': 'Home',
    'image': 'assets/images/icons/Home.png',
  },
  {
    'title': 'Beauty',
    'image': 'assets/images/icons/beauty.png',
  },
  {
    'title': 'Appliances',
    'image': 'assets/images/icons/appliances.png',
  },
  {
    'title': 'Movies',
    'image': 'assets/images/icons/movies.jpg',
  },
  {
    'title': 'Furniture',
    'image': 'assets/images/icons/furniture.jpg',
  },
  {
    'title': 'Pharmacy',
    'image': 'assets/images/icons/pharmacy.jpg',
  },
  {
    'title': 'Books, Toys',
    'image': 'assets/images/icons/toys.jpg',
  },
  {
    'title': 'Alexa',
    'image': 'assets/images/icons/alexa.jpg',
  },
];

final List<String> imgList = [
  'assets/images/Carsel/1.png',
  'assets/images/Carsel/2.png',
  'assets/images/Carsel/3.png',
  'assets/images/Carsel/4.png',
  'assets/images/Carsel/5.png',
  'assets/images/Carsel/6.png',
  'assets/images/Carsel/7.png',
  'assets/images/Carsel/9.png',
  'assets/images/Carsel/10.png',
];

final List<Map<String, String>> amaPay = [
  {
    'title': 'Amazon Pay',
    'image': 'assets/images/Pay/amazonpay.jpg',
  },
  {
    'title': 'Send Money',
    'image': 'assets/images/Pay/sendmoney.jpg',
  },
  {
    'title': 'Scan any QR',
    'image': 'assets/images/Pay/scan.jpg',
  },
  {
    'title': 'Pay Bills',
    'image': 'assets/images/Pay/paybills.jpg',
  },
];

final List<String> images = [
  'assets/images/Offers/1.jpg',
  'assets/images/Offers/2.png',
  'assets/images/Offers/3.png',
  'assets/images/Offers/4.jpg',
];

List<Widget> children = [
  const AmazonPay(),
  OfferImage(image: images[0]),
  OfferImage(image: images[1]),
  OfferImage(image: images[2]),
  OfferImage(image: images[3]),
];
List<Widget> children2 = [
  OffrImage(
    image: reccImages[0]['image']!,
    amount: reccImages[0]['price']!,
    discount: reccImages[0]['discount']!,
    name: reccImages[0]['title']!,
  ),
  OffrImage(
    image: reccImages[1]['image']!,
    amount: reccImages[1]['price']!,
    discount: reccImages[1]['discount']!,
    name: reccImages[1]['title']!,
  ),
  OffrImage(
    image: reccImages[2]['image']!,
    amount: reccImages[2]['price']!,
    discount: reccImages[2]['discount']!,
    name: reccImages[2]['title']!,
  ),
  OffrImage(
    image: reccImages[3]['image']!,
    amount: reccImages[3]['price']!,
    discount: reccImages[3]['discount']!,
    name: reccImages[3]['title']!,
  ),
  OffrImage(
    image: reccImages[4]['image']!,
    amount: reccImages[4]['price']!,
    discount: reccImages[4]['discount']!,
    name: reccImages[4]['title']!,
  )
];

const List<Map<String, String>> reccImages = [
  {
    'title': 'Lenovo IdeaPad',
    'image': 'assets/images/Offers/1 (1).jpg',
    'price': '61,490',
    'discount': '25',
  },
  {
    'title': 'Redmi 9i',
    'image': 'assets/images/Offers/1 (2).jpg',
    'price': '8,999',
    'discount': '10',
  },
  {
    'title': 'Boat Rockers 450',
    'image': 'assets/images/Offers/1 (3).jpg',
    'price': '1,299',
    'discount': '67',
  },
  {
    'title': 'Fastrack Analog Watch',
    'image': 'assets/images/Offers/1 (4).jpg',
    'price': '725',
    'discount': '9',
  },
  {
    'title': 'Men Regular TShirt',
    'image': 'assets/images/Offers/1 (5).jpg',
    'price': '369',
    'discount': '54',
  },
];
