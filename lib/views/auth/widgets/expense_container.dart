import 'package:cipher_schools_expense_tracker/models/transaction_model.dart';
import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/views/auth/widgets/category_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ExpenseContainer extends StatelessWidget {
  const ExpenseContainer({super.key, required this.transaction});

  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        padding: EdgeInsets.all(15),
        height: 90,
        width: screenW(context),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            transaction.category == 'Shopping'
                ? CategoryContainer(
                    color: Colors.amber.withOpacity(0.3),
                    image: 'assets/shopping bag.png')
                : transaction.category == 'Food'
                    ? CategoryContainer(
                        color: Colors.red.withOpacity(0.3),
                        image: 'assets/restaurant.png')
                    : transaction.category == 'Subscriptions'
                        ? CategoryContainer(
                            color: bgViolet.withOpacity(0.3),
                            image: 'assets/recurring-bill.png')
                        : CategoryContainer(
                            color: Colors.blue[900]!.withOpacity(0.3),
                            image: 'assets/car.png'),
            sizedwten(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.category,
                  style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(transaction.description,
                    style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w500))
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  transaction.type == 'Expense' ? '- ₹${transaction.amount}' : '+ ₹${transaction.amount}',
                  style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: transaction.type == 'Expense' ? Colors.red : Colors.green),
                ),
                Text(DateFormat.jm().format(transaction.time),
                    style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w500))
              ],
            )
          ],
        ),
      ),
    );
  }
}
