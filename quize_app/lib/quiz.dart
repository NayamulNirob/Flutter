import 'package:flutter/material.dart';
import 'package:quize_app/design_app_bar.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: DesignAppBar(),
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
          child: Center(
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
          ),
        ),
      ),
    );
  }
}
