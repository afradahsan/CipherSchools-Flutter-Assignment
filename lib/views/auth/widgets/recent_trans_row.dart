import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentTransRow extends StatelessWidget {
  const RecentTransRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recent Transaction',
            style: TextStyle(
                fontFamily: GoogleFonts.inter().fontFamily,
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: bgViolet.withOpacity(0.2)),
              child: Text(
                'View All',
                style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 14,
                    color: bgViolet,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
