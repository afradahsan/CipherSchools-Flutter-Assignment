import 'package:cipher_schools_expense_tracker/utils/colors.dart';
import 'package:cipher_schools_expense_tracker/views/home/add_transaction.dart';
import 'package:cipher_schools_expense_tracker/views/home/budgets_page.dart';
import 'package:cipher_schools_expense_tracker/views/home/home_page.dart';
import 'package:cipher_schools_expense_tracker/views/home/profile_page.dart';
import 'package:cipher_schools_expense_tracker/views/home/transactions_page.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> pages = [];
  int selectedIndex = 0;


  @override
  void initState() {
    super.initState();
    pages = [
      const HomePage(),
      const TransactionsPage(),
      const BudgetsPage(),
      const ProfilePage()
    ];
  }

  void _onFabPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddTransaction(),));
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: bgViolet,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/home_greyed.png', height: 30,),  
            activeIcon: Image.asset('assets/home.png', height: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/transaction_greyed.png', height: 30,),  
            activeIcon: Image.asset('assets/Transaction.png', height: 30,),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/pie-chart_greyed.png', height: 30,),  
            activeIcon: Image.asset('assets/pie-chart.png', height: 30,),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/user_greyed.png', height: 30,),  
            activeIcon: Image.asset('assets/user.png', height: 30,),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
      floatingActionButton: selectedIndex == 0
          ? FloatingActionButton(
              onPressed: () {
                _onFabPressed();
              },
              child: Icon(Icons.add, color: bgViolet,),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}