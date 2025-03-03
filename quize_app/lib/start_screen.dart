import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: const Color.from(
              alpha: 0.384,
              red: 0.992,
              green: 0.996,
              blue: 1,
            ),
          ),
          SizedBox(height: 80),
          Text(
            'Flutter Learning Is a Fun',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () => {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              iconColor: Colors.white,
              side: BorderSide(color: Colors.white),
            ),
            label: Text('Start Quiz'),
            icon: Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
