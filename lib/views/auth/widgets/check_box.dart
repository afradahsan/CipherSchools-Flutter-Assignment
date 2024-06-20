import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

class TermsCheckBox extends StatefulWidget {
  TermsCheckBox({super.key, required this.onChanged, required this.isChecked});

  final bool isChecked;
  void Function(bool?)? onChanged;

  @override
  State<TermsCheckBox> createState() => _TermsCheckBoxState();
}

class _TermsCheckBoxState extends State<TermsCheckBox> {
  
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        side: BorderSide(color: bgViolet, width: 2),
        activeColor: bgViolet,
        checkColor: white,
        value: widget.isChecked,
        onChanged: widget.onChanged);
  }
}
