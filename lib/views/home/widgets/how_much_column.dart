import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HowMuchColumn extends StatelessWidget {
  const HowMuchColumn({super.key, required this.amountController});

  final TextEditingController amountController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How Much?',
            style: TextStyle(
              fontSize: 18,
              fontFamily: GoogleFonts.inter().fontFamily,
              color: white.withOpacity(0.6),
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: amountController,
            style: TextStyle(
              fontSize: 64,
              fontFamily: GoogleFonts.inter().fontFamily,
              color: white,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
                hintText: '0',
                hintStyle: TextStyle(
                  fontSize: 64,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: Text(
                  '₹',
                  style: TextStyle(
                    fontSize: 64,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
