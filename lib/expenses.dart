import 'package:expenses/chart/chart.dart';
import 'package:expenses/widget/expenses_list/expense_list.dart';
import 'package:expenses/widget/new_expense.dart';
import 'package:flutter/material.dart';

import 'model/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter',
        amount: 30,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Flutter',
        amount: 30,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Flutter',
        amount: 30,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Flutter',
        amount: 30,
        date: DateTime.now(),
        category: Category.travel),
  ];

  void _addExpense(Expense expense) {
    setState(
      () {
        _registeredExpenses.add(expense);
      },
    );
  }

  void _removeExpenses(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Expense deleted"),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text("No Expenses found"),
    );
    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpenseList(
        expenses: _registeredExpenses,
        onRemovedExpense: _removeExpenses,
      );
    }
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (ctx) => NewExpense(onAddExpense: _addExpense),
                  showDragHandle: true,
                  useSafeArea: true,
                  clipBehavior: Clip.hardEdge,
                );
              },
              icon: const Icon(Icons.add))
        ],
        title: const Text("Expenses Tracker"),
        leading: null,
      ),
      body: Column(
        children: [
          Chart(expenses: _registeredExpenses),
          Expanded(child: mainContent),
        ],
      ),
    );
  }
}
