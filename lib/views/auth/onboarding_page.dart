import 'package:cipher_schools_expense_tracker/views/auth/widgets/onboarding_stack.dart';
import 'package:flutter/material.dart';

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
          const Spacer(),
          const OnboardingStack()
        ],
      )),
    );
  }
}