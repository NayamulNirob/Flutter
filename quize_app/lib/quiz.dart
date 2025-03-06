import 'package:flutter/material.dart';
import 'package:quize_app/design_app_bar.dart';
import 'package:quize_app/question_screen.dart';
import 'package:quize_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen; // 1st method of leafting & Rendering with initState

  // var activeScreen =
  //     'Start-Screen'; // 2nd method of leafting & Rendering with tarnary expression

  @override // 1st method of leafting & Rendering with initState
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
       activeScreen = QuestionScreen(); // 1st method of leafting & Rendering with initState

      // activeScreen =
      //     'Question-Screen'; // 2nd method of leafting & Rendering with tarnary expression
    });
  }

  @override
  Widget build(BuildContext context) {
    // final swipScreen =
    //     activeScreen == 'Start-Screen'
    //         ? StartScreen(switchScreen)
    //         : QuestionScreen(); // 2nd method of leafting & Rendering with tarnary expression

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
          child:
          activeScreen, // 1st method of leafting & Rendering with initState
          // child:
          //     swipScreen, // 2nd method of leafting & Rendering with tarnary expression
        ),
      ),
    );
  }
}
