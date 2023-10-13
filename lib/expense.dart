import 'package:expenses/widget/expenses_list/expense_list.dart';
import 'package:flutter/material.dart';

import 'model/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses=[
    Expense(title: 'Flutter', amount: 30, date: DateTime.now(), category: Category.food),
    Expense(title: 'Flutter', amount: 30, date: DateTime.now(), category: Category.leisure),
    Expense(title: 'Flutter', amount: 30, date: DateTime.now(), category: Category.work),
    Expense(title: 'Flutter', amount: 30, date: DateTime.now(), category: Category.travel),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses Tracker"),
        leading: null,
      ),
      body: ExpenseList(expenses: _registeredExpenses,),
    );
  }
}
