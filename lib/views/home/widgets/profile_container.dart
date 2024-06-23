import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key, required this.color, required this.text, required this.image});

  final Color color;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 30),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15)),
            child: Image.asset(image),
          ),
          sizedwten(context),
          Text(text,
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
