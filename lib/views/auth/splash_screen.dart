import 'dart:async';

import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/views/auth/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),()=>
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
      return const OnboardingPage();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset('assets/recordcircle_top.png')],
          ),
          Column(
            children: [
              Image.asset(
                'assets/cipher_logo.png',
                height: 100,
              ),
              sizedten(context),
              Text(
                'CipherX',
                style: TextStyle(
                    fontFamily: GoogleFonts.brunoAceSc().fontFamily,
                    color: Colors.white,
                    fontSize: 30),
              ),
            ],
          ),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Image.asset('assets/recordcircle_bottom.png')],
              ),
              Positioned(
                  left: 110,
                  top: 120,
                  child: Column(
                    children: [
                      Text(
                        'By',
                        style: TextStyle(
                            fontFamily: GoogleFonts.cambay().fontFamily,
                            color: white.withOpacity(0.5)),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: 'Open Source ',
                          style: TextStyle(
                              fontFamily: GoogleFonts.cambay().fontFamily,
                              color: white.withOpacity(0.5)),
                        ),
                        TextSpan(
                          text: 'Community',
                          style: TextStyle(
                              fontFamily: GoogleFonts.cambay().fontFamily,
                              color: Colors.orange),
                        )
                      ]))
                    ],
                  ))
            ],
          ),
        ],
      )),
    );
  }
}
