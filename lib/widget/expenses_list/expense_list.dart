import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../model/expense.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.expenses, required this.onRemovedExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemovedExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: ValueKey(expenses[index]),
          onDismissed: (direction) {
            onRemovedExpense(expenses[index]);
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  Text(expenses[index].title),
                  Row(
                    children: [
                      Text("Rs. ${expenses[index].amount.toString()}"),
                      const Spacer(),
                      Row(
                        children: [
                          Icon(categoryIcons[expenses[index].category]),
                          const SizedBox(width: 8),
                          Text(DateFormat('dd-MM-yyyy')
                              .format(expenses[index].date)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
