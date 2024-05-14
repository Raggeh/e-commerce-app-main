import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appcolors.dart';

class ReuseableText extends StatelessWidget {

  final String reuseableText ;
  const ReuseableText({super.key, required this.reuseableText});

  @override
  Widget build(BuildContext context) {
    return Text(reuseableText , 
     style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 18, color: AppColors.blueDarkColor),
          ),
    );
  }
}