import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatefulWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
          SizedBox(height: 60),
          Text(
            'Flutter Learning Is a Fun',
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: widget.startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              iconColor: Colors.white,
              side: BorderSide(color: Colors.white),
            ),
            label: Text('Start Quiz',style: GoogleFonts.openSans(fontWeight: FontWeight.bold),),
            icon: Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
