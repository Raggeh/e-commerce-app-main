import 'package:flutter/material.dart';
import 'package:real_ecommerce_app/pages/bottom_nav_bar.dart';


void main () => runApp( const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavBar(),
    );
  }
}