import 'package:expense_tracker_app/expense.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
const MyApp({super.key});
  @override
  State<MyApp> createState() =>_MyAppState();
  }
  
  class _MyAppState extends State<MyApp>{
    @override
      Widget build (BuildContext context){
      return Placeholder();
    }
  }

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Expense(),
    ),
  );
}
