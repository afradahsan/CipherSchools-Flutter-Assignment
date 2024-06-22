import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/views/auth/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTransContainer extends StatefulWidget {
  const AddTransContainer({super.key});

  @override
  State<AddTransContainer> createState() => _AddTransContainerState();
}

class _AddTransContainerState extends State<AddTransContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: screenH(context) / 2,
            width: screenW(context),
            decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 12, top: 30, bottom: 0),
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                    dropdownColor: Colors.white,
                    value: 'Food',
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Category',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onChanged: (value) {},
                    items: const [
                      DropdownMenuItem(value: 'Food', child: Text('Food')),
                      DropdownMenuItem(value: 'Travel', child: Text('Travel')),
                      DropdownMenuItem(
                          value: 'Subscriptions', child: Text('Subscriptions')),
                      DropdownMenuItem(
                          value: 'Shopping', child: Text('Shopping')),
                    ],
                  ),
                  sizedtwenty(context),
                  DropdownButtonFormField<String>(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                    dropdownColor: Colors.white,
                    value: 'Expense',
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Type',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onChanged: (value) {},
                    items: const [
                      DropdownMenuItem(
                          value: 'Expense', child: Text('Expense')),
                      DropdownMenuItem(value: 'Income', child: Text('Income')),
                    ],
                  ),
                  sizedtwenty(context),
                  TextField(
                    // controller: ,
                    decoration: InputDecoration(
                        labelText: 'Description',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ))),
                  ),
                  const SizedBox(height: 100,),
                  const AuthButton(buttonText: 'Save')
                ],
              ),
            ),
          );
  }
}