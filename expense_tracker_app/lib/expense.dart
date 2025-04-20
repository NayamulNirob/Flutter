import 'package:flutter/material.dart';

class Expense extends StatefulWidget{
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: ()=>{}, icon:Icon(Icons.add))],
        backgroundColor: Colors.blue,
        ),
      body:Center(
        child: Column(
          children: [
            Text("Hello"),
            Text("Hey"),
            Text("Hi"),
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}