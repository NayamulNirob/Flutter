import 'package:flutter/material.dart';

class BodyQuiz extends StatefulWidget {
  const BodyQuiz({super.key});

  @override
  State<BodyQuiz> createState() => _BodyQuizState();
}

class _BodyQuizState extends State<BodyQuiz> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color.fromARGB(255, 83, 5, 97)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/quiz-logo.png', width: 300),
            SizedBox(height: 60),
            Text(
              'Flutter Learning Is a Fun',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: () => {}, child: Text('Start Quiz')),
          ],
        ),
      ),
    );
  }
}
