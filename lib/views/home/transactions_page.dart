import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Transactions Page',
          style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500)),
    );
  }
}