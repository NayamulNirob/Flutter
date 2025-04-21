import 'package:ulid/ulid.dart';

var uuid = Ulid();

enum Category {
  food,
  travel,
  leisure,
  work,
}

class Expense {
  Expense({
    required this.category,
    required this.title, 
    required this.amount, 
    required this.date}): id = uuid.toUuid();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
