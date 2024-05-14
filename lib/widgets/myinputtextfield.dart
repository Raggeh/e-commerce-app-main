import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appcolors.dart';

// ignore: must_be_immutable
class MyInputTextField extends StatelessWidget {


  String? Function(String?)? validator;
  final Widget myPrefixIcon ;
   final String myhintText;
   bool obscureText = false;

   MyInputTextField ({super.key, required this.myhintText , required this.myPrefixIcon, this.validator , required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText ,
      decoration: InputDecoration(
        hintText: myhintText, hintStyle: GoogleFonts.poppins(
          textStyle: const TextStyle( color: AppColors.greyColor, fontSize: 14)
        ),
        prefixIcon: myPrefixIcon,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.blueDarkColor
          ),
        ),
      ),
      
    );
  }
}