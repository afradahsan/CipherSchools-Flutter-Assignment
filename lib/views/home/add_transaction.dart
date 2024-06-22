import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/views/home/widgets/add_trans_container.dart';
import 'package:cipher_schools_expense_tracker/views/home/widgets/how_much_column.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTransaction extends StatelessWidget {
  const AddTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.keyboard_backspace_rounded,
            color: white,
            size: 25,
          ),
          title: Text(
            'Add a Transaction',
            style: TextStyle(
              fontSize: 18,
              color: white,
              fontFamily: GoogleFonts.inter().fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromRGBO(0, 119, 255, 1),
        body: const SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(), 
                  HowMuchColumn(), 
                  AddTransContainer()
                ])));
  }
}