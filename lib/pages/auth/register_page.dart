import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_ecommerce_app/widgets/mybutton.dart';

import '../../widgets/appcolors.dart';
import '../../widgets/myinputtextfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    final formKey = GlobalKey<FormState>();

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),

              //Sign up vector Image
              Center(
                child: Image.asset(
                  'assets/icons/add-user.png',
                  height: 50,
                  width: 80,
                  color: AppColors.blueDarkColor,
                ),
              ),

              const SizedBox(
                height: 60,
              ),

              //name
              MyInputTextField(
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'must not be empty';
                  }
                  return null;
                },
                myPrefixIcon: const Icon(
                  Icons.person,
                  color: AppColors.blueDarkColor,
                ),
                myhintText: ' Raggeh ',
              ),

              const SizedBox(
                height: 15,
              ),
              //phone

              MyInputTextField(
                obscureText: false,
                 validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'must not be empty';
                  }
                  return null;
                },
                myhintText: ' Phone Number',
                myPrefixIcon: const Icon(
                  Icons.phone,
                  color: AppColors.blueDarkColor,
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              //email

              MyInputTextField(
                obscureText: false,
                 validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'must not be empty';
                  }
                  return null;
                },
                myhintText: ' E-mail',
                myPrefixIcon: const Icon(
                  Icons.email_rounded,
                  color: AppColors.blueDarkColor,
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              //password
              MyInputTextField(
                obscureText: true,
                 validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'must not be empty';
                  }
                  return null;
                },
                myhintText: ' Password ',
                myPrefixIcon: const Icon(
                  Icons.lock_rounded,
                  color: AppColors.blueDarkColor,
                ),
              ),

              //dont have an account

              const SizedBox(
                height: 20,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pop(context);
                  },
                  child: Text(
                    'have an account login?',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16, color: AppColors.textColor)),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //signup button
               MyTextButton(
                onPressed: (){
                  //  if (formKey.currentState!.validate()){

                  //  }
                },
                buttonText: 'Sign Up'),

              const SizedBox(
                height: 25,
              ),

              //fotget button

              Text(
                'Forgot password?',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 16, color: AppColors.textColor)),
              ),

              const SizedBox(
                height: 50,
              ),

              Text(
                'By continuing you agree to our Terms and Privacy Policy',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 18, color: AppColors.blueDarkColor),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
