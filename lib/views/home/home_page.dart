import 'package:cipher_schools_expense_tracker/models/transaction_model.dart';
import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/view_models/transaction_viewmodels.dart';
import 'package:cipher_schools_expense_tracker/views/home/widgets/date_tabs.dart';
import 'package:cipher_schools_expense_tracker/views/home/widgets/expense_container.dart';
import 'package:cipher_schools_expense_tracker/views/home/widgets/home_container.dart';
import 'package:cipher_schools_expense_tracker/views/home/widgets/recent_trans_row.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TransactionViewModel>(context, listen: false);

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            const HomeContainer(),
            sizedten(context),
            const DateTabs(),
            sizedten(context),
            const RecentTransRow(),
            Expanded(
              child: ValueListenableBuilder<Box<TransactionModel>>(
                valueListenable: viewModel.transactionListenable,
                builder: (context, box, _) {
                  final transactions =
                      box.values.toList().cast<TransactionModel>();

                  if (transactions.isEmpty) {
                    return const Center(child: Text("No transactions yet"));
                  }

                  return ListView.builder(
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
                      final transaction = transactions[index];
                      return ExpenseContainer(transaction: transaction, index: index,);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
