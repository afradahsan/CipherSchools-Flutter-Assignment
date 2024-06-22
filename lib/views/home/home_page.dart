import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/utils/constants.dart';
import 'package:cipher_schools_expense_tracker/views/auth/widgets/date_tabs.dart';
import 'package:cipher_schools_expense_tracker/views/auth/widgets/expense_container.dart';
import 'package:cipher_schools_expense_tracker/views/auth/widgets/home_container.dart';
import 'package:cipher_schools_expense_tracker/views/auth/widgets/recent_trans_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            HomeContainer(),
            sizedten(context),
            DateTabs(),
            sizedten(context),
            RecentTransRow(),
            ExpenseContainer()
          ],
        ),
      ),
    );
  }
}
