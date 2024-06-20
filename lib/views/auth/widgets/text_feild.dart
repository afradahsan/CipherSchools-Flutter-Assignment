import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfeild extends StatefulWidget {
  Textfeild(
      {super.key,
      required this.textfeildController,
      required this.hintText,
      this.isVisible});

  final TextEditingController textfeildController;
  final String hintText;
  bool? isVisible;

  @override
  State<Textfeild> createState() => _TextfeildState();
}

class _TextfeildState extends State<Textfeild> {

  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    bool? isVisible = widget.isVisible;
    return TextFormField(
      controller: widget.textfeildController,
      obscureText: !_isVisible,
      decoration: InputDecoration(
        suffixIcon: isVisible == null
            ? null
            : IconButton(
                onPressed: () {
                  setState(() {
                    _isVisible = !_isVisible;
                    print(_isVisible);
                  });
                },
                icon: _isVisible == true
                    ? Icon(Icons.visibility_outlined, color: Colors.black.withOpacity(0.6),)
                    : Icon(Icons.visibility_off_outlined, color: Colors.black.withOpacity(0.6))),
        hintText: widget.hintText,
        hintStyle: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Colors.black.withOpacity(0.6)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black)),
      ),
    );
  }
}
