import 'package:flutter/material.dart';
import 'package:real_ecommerce_app/widgets/appcolors.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 251, 251, 253)),
      child: Row(
        children: [
          Radio(
            value: '',
            groupValue: '',
            onChanged: (index) {},
            activeColor: AppColors.blueDarkColor,
          ),
          Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.only(right: 15),
            child: Image.asset('assets/categories/4.png'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Product Title',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.blueDarkColor,
                  fontWeight: FontWeight.bold
                ),),
                Text('\$55',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.blueDarkColor,
                  fontWeight: FontWeight.bold
                ),),
              ],

              
            ),
          ),

          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(children: [
              Icon(Icons.delete, color: Colors.red,)
            ],),)
        ],
      ),
    );
  }
}
