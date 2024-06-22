import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:cipher_schools_expense_tracker/models/transaction_model.dart';

class TransactionViewModel extends ChangeNotifier {
  final Box<TransactionModel> _transactionBox = Hive.box<TransactionModel>('transactions');

  ValueListenable<Box<TransactionModel>> get transactionListenable => _transactionBox.listenable();

  void addTransaction(TransactionModel transaction) {
    _transactionBox.add(transaction);
    notifyListeners();
  }

  void deleteTransaction(int index) {
    _transactionBox.deleteAt(index);
    notifyListeners();
  }
}
