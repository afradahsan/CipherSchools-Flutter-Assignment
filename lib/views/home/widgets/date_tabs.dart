import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTabs extends StatelessWidget {
  const DateTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(253, 234, 197, 1)),
            child: Text(
              'Today',
              style: TextStyle(
                  color: const Color.fromRGBO(
                    252,
                    172,
                    18,
                    1,
                  ),
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'Week',
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'Month',
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'Year',
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
