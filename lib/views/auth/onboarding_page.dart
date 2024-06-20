import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/views/auth/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Image.asset('assets/recordcircle_top.png')],
              ),
              Positioned(
                left: 15,
                top: 15,
                child: Image.asset(
                  'assets/cipher_logo.png',
                  height: 50,
                ),
              )
            ],
          ),
          Spacer(),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Image.asset('assets/recordcircle_bottom.png')],
              ),
              Positioned(
                top: 10,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Welcome to',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.aBeeZee().fontFamily,
                                  fontSize: 40,
                                  color: white),
                            ),
                            Text(
                              'CipherX.',
                              style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.brunoAceSc().fontFamily,
                                  fontSize: 36,
                                  color: white),
                            )
                          ],
                        ),
                        sizedwfive(context),
                        InkWell(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return SignupPage();
                          },)),
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 50,
                              weight: 40,
                            ),
                          ),
                        )
                      ],
                    ),
                    sizedfive(context),
                    Text(
                      'The best way to track your expenses.',
                      style: TextStyle(
                          fontFamily: GoogleFonts.aBeeZee().fontFamily,
                          fontSize: 17,
                          color: white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}