import 'package:flutter/material.dart';
import 'package:quize_app/data/questions.dart';
import 'package:quize_app/design_app_bar.dart';
import 'package:quize_app/question_screen.dart';
import 'package:quize_app/result_screen.dart';
import 'package:quize_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  List<String> selectedAnswer = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void choosenAnswer(String answer) {
    setState(() {
      selectedAnswer.add(answer);
      if (selectedAnswer.length == questions.length) {
        activeScreen = 'results-screen';
      }
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'start-screen';
    });
  }

  

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectedAnswer: choosenAnswer,  );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(choosenAnswer: selectedAnswer, onRestartQuiz: restartQuiz,);
    }

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

          child: screenWidget,
        ),
      ),
    );
  }
}
