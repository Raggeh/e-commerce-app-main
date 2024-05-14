import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appcolors.dart';

class MyTextButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const MyTextButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding:const EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.blueDarkColor
        ),
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 16, color: AppColors.whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
