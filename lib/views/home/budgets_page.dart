import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BudgetsPage extends StatelessWidget {
  const BudgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Budget Page',
          style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500)),
    );
  }
}
