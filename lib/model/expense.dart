import 'package:uuid/uuid.dart';

class Expense{
  Expense( {
   required this.title,
    required this.amount,
    required this.date
} ):id= const Uuid().v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;

}