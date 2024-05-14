import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_ecommerce_app/widgets/home_page_header.dart';
import 'package:real_ecommerce_app/widgets/items_widget.dart';
import 'package:real_ecommerce_app/widgets/reuseable_text.dart';

import '../widgets/appcolors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List catName = [
    'Clothes',
    'Electonic',
    'Laptops',
    'Shoes',
    'Smartphones',
    'Sports',
  ];

  List<Color> catColors = [
    const Color(0xFFFFCF2F),
    // ignore: use_full_hex_values_for_flutter_colors
    const Color(0xFF6FCE08D),
    const Color(0xFF61BDFD),
    const Color.fromARGB(255, 228, 92, 92),
    const Color(0xFFCB84FB),
    const Color(0xFF78E667),
  ];

  List<Image> catImages = [
    Image.asset(
      'assets/categories/clothes.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/categories/electronic.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/categories/3.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/categories/shoes.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/categories/clothes.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/categories/sports.jpg',
      height: 40,
      width: 40,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const HomePageHeader(),
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
            itemCount: catName.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1.1),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: catColors[index],
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: catImages[index],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    catName[index],
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 16,
                      color: AppColors.blueDarkColor,
                    )),
                  ),
                ],
              );
            },
          ),
          CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1552664730-d307ca884978?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fG1hcmtldCUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D'))),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            
                              'https://images.unsplash.com/photo-1531482615713-2afd69097998?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFya2V0JTIwcGVvcGxlfGVufDB8fDB8fHww',),)),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1473594659356-a404044aa2c2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bWFya2V0JTIwcGVvcGxlfGVufDB8fDB8fHww'))),
                ),
              ],
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              )),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: ReuseableText(
                    reuseableText: 'Buy Now 🔥',
                  )),
              Spacer(),
              Text(
                'More',
                style: TextStyle(fontSize: 16, color: AppColors.greyColor),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          const ItemsWidget(),

          const SizedBox(height: 40,),
        ],
      ),
    ));
  }
}
