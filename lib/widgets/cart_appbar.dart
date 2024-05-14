import 'package:flutter/material.dart';
import 'package:real_ecommerce_app/widgets/appcolors.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.blueDarkColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Cart',
              style: TextStyle(
                  fontSize: 23,
                  color: AppColors.blueDarkColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
          const Spacer(),

          const Icon(Icons.more_vert, size: 30,)
        ],
      ),
    );
  }
}
