import 'package:flutter/material.dart';
import 'Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xff92DFD9),
        appBarTheme: const AppBarTheme(
          color: Color(0xff92DFD9),
        ),
        scaffoldBackgroundColor: const Color(0xffD0D6D6),
      ),
      home: const Homepage(),
    );
  }
}
