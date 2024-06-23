import 'package:cipher_schools_expense_tracker/models/transaction_model.dart';
import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/view_models/transaction_viewmodels.dart';
import 'package:cipher_schools_expense_tracker/views/home/widgets/category_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ExpenseContainer extends StatelessWidget {
  const ExpenseContainer(
      {super.key, required this.transaction, required this.index});

  final TransactionModel transaction;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Dismissible(
        key: Key(index.toString()),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) async {
          await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Are you sure you want to delete this item?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Provider.of<TransactionViewModel>(context, listen: false).deleteTransaction(index);
                          Navigator.pop(context);
                        },
                        child: const Text("Yes")),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("No")),
                  ],
                );
              });
        },
        background: Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete_rounded,
            color: white,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 90,
          width: screenW(context),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              _buildCategoryContainer(transaction),
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
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    transaction.type == 'Expense'
                        ? '- ₹${transaction.amount}'
                        : '+ ₹${transaction.amount}',
                    style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: transaction.type == 'Expense'
                            ? Colors.red
                            : Colors.green),
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
      ),
    );
  }

  Widget _buildCategoryContainer(TransactionModel transaction) {
    switch (transaction.category) {
      case 'Shopping':
        return CategoryContainer(
          color: Colors.amber.withOpacity(0.3),
          image: 'assets/shopping bag.png',
        );
      case 'Food':
        return CategoryContainer(
          color: Colors.red.withOpacity(0.3),
          image: 'assets/restaurant.png',
        );
      case 'Subscriptions':
        return CategoryContainer(
          color: bgViolet.withOpacity(0.3),
          image: 'assets/recurring-bill.png',
        );
      default:
        return CategoryContainer(
          color: Colors.blue[900]!.withOpacity(0.3),
          image: 'assets/car.png',
        );
    }
  }
}
