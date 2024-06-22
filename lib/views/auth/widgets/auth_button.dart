import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  const AuthButton(
      {super.key, required this.buttonText,required this.onTap, required this.color});

  final String buttonText;
  final void Function() onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        buttonText,
        style: TextStyle(
            color: white,
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          minimumSize: WidgetStatePropertyAll(Size(screenW(context), 50)),
          backgroundColor: WidgetStatePropertyAll(color)),
    );
  }
}
