import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseContainer extends StatelessWidget {
  const ExpenseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(15),
                height: 90,
                width: screenW(context),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)
                ),
                child: Row(children: [
                  Container(height: 70, width: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset('assets/shopping bag.png'),
                  ),
                  sizedwten(context),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shopping', style: TextStyle(fontFamily: GoogleFonts.inter().fontFamily, fontSize: 16, fontWeight: FontWeight.w600),),
                      Text('Buy some grocery', style: TextStyle(fontFamily: GoogleFonts.inter().fontFamily,color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500))
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('- ₹200', style: TextStyle(fontFamily: GoogleFonts.inter().fontFamily, fontSize: 16, fontWeight: FontWeight.w600, color: Colors.red),),
                      Text('10:00AM', style: TextStyle(fontFamily: GoogleFonts.inter().fontFamily,color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500))
                    ],
                  )
                ],),
              ),
            );
  }
}