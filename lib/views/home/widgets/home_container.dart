import 'package:cipher_schools_expense_tracker/models/transaction_model.dart';
import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/view_models/transaction_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
          color: Colors.amber.withOpacity(0.1)),
      child: ValueListenableBuilder<Box<TransactionModel>>(
          valueListenable:
              Provider.of<TransactionViewModel>(context, listen: false)
                  .transactionListenable,
          builder: (context, box, _) {
            final transactions = box.values.toList().cast<TransactionModel>();

            int accountBalance = 0;
            int income = 0;
            int expense = 0;

            // Reset income and expense before iteration
            for (var transaction in transactions) {
              if (transaction.type == 'Expense') {
                expense += transaction.amount.toInt();
              } else {
                income += transaction.amount.toInt();
              }
            }

            accountBalance = income - expense;

            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: bgViolet),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/LinkedIn-Profile-Picture-Example-Tynan-Allan-414x414.jpeg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: bgViolet,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'October', // This should be dynamic
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.notifications,
                      color: bgViolet,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      'Account Balance',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '₹$accountBalance',
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                sizedtwenty(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 180,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(0, 168, 107, 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/income.png'),
                          sizedwten(context),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Income',
                                style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 14,
                                    color: white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '₹$income',
                                style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 22,
                                    color: white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 180,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(253, 60, 74, 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/expense.png'),
                          sizedwten(context),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expense',
                                style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 14,
                                    color: white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '₹$expense',
                                style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 22,
                                    color: white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            );
          }),
    );
  }
}