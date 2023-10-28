
import 'package:flutter/material.dart';

import '../../model/expense.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  Text(expenses[index].title),
                  Row(
                    children: [
                      Text(expenses[index].amount.toString()),
                      const Spacer(),
                      Row(
                        children: [
                          Icon(categoryIcons[expenses[index].category]),
                          const SizedBox(width: 8),
                          Text(expenses[index].date.toString()),
                        ],
                      )


                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
