import 'package:flutter/material.dart';
import '../widgets/cart_appbar.dart';
import '../widgets/cart_item_samples.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          const CartAppBar(),

          //Items Container
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),

            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 238, 238, 241),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: const Column(
              children: [
              CartItemSamples(),
            ],),
          )
        ],
      ),
    );
  }
}
