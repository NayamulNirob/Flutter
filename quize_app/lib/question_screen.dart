import 'package:flutter/material.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 83, 5, 97),
                const Color.fromARGB(255, 143, 16, 165),
              ],
            ),
          ),
          child: Center(child: Text('Question Screen', style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
