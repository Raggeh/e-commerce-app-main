// ignore_for_file: non_constant_identifier_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/appcolors.dart';
import 'home_page.dart';
import 'order_page.dart';
import 'profile_page.dart';
import 'cart_page.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late HomePage home_page;
  late CartPage cart_page;
  late OrderPage order_page;
  late ProfilePage profile_page;

  @override
  void initState() {
    home_page = const HomePage();
    cart_page = const CartPage();
    profile_page = const ProfilePage();
    order_page = const OrderPage();
    pages = [home_page, cart_page, order_page, profile_page];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.transparent,
          color: AppColors.blueDarkColor,
          animationDuration: const Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: const [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.wallet_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outlined,
              size: 30,
              color: Colors.white,
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}
