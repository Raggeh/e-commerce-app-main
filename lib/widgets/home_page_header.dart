import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_ecommerce_app/widgets/appcolors.dart';
import 'package:badges/badges.dart' as badges;

import '../pages/cart_page.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset('assets/icons/profile.png'),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                ' Hi Raggeh\n What are you Looking for?',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor)),
              )
            ],
          ),
          const Spacer(),
          badges.Badge(
            position: badges.BadgePosition.topEnd(),
            badgeContent: const Text('3',
            style: TextStyle(color: Colors.white),),
            child: InkWell(
              onTap: (){
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
              },
              child: const Icon(Icons.shopping_bag_outlined, size: 30, color: AppColors.blueDarkColor,),
            )
          )
        ],
      ),
    );
  }
}
