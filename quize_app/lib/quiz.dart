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
  // Widget? activeScreen; // 1st method of leafting & Rendering with initState

  var activeScreen =
      'start-screen'; // 2nd method of leafting & Rendering with tarnary expression

  List<String> selectedAnswer = [];

  // @override // 1st method of leafting & Rendering with initState
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen =
      //     QuestionScreen(choosenAnswer); // 1st method of leafting & Rendering with initState

      activeScreen =
          'question-screen'; // 2nd method of leafting & Rendering with tarnary expression
    });
  }

  void choosenAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // final swipScreen =
    //     activeScreen == 'Start-Screen'
    //         ? StartScreen(switchScreen)
    //         : QuestionScreen(choosenAnswer); // 2nd method of leafting & Rendering with tarnary expression

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectedAnswer: choosenAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(choosenAnswer: selectedAnswer,);
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
          // child:
          //     activeScreen, // 1st method of leafting & Rendering with initState
          // child:
          //     swipScreen, // 2nd method of leafting & Rendering with tarnary expression
          child: screenWidget,
        ),
      ),
    );
  }
}
