import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.travel_explore,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({required this.category,
    required this.title,
    required this.amount,
    required this.date})
      : id = const Uuid().v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
