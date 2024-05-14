import 'package:flutter/material.dart';

import 'appcolors.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.62,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for(int i = 1; i <=5 ; i ++)
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 247, 239, 239),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.blueDarkColor,
                    ),
                    child: const Text(
                      '-50%',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Icon(Icons.favorite_border, color: Colors.red, size: 35,)
                ],
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/categories/$i.png', height: 120, width: 120,),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: const Text('Product Title' , 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.blueDarkColor),
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                child:  const Text('Product Description here ...........' , 
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),


              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$55', style: TextStyle(
                      fontSize: 18,
                      color: AppColors.blueDarkColor,
                      fontWeight: FontWeight.bold
                    ),),


                    Icon(Icons.shopping_cart_checkout,
                    color: AppColors.blueDarkColor,)
                  ],
                )
              )

            ],
          ),
        ),
       
      ],
    );
  }
}
