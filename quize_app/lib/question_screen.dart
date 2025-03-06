import 'package:flutter/material.dart';
import 'package:quize_app/answer_btn.dart';
import 'package:quize_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10, // Horizontal space between button
        
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(
            //       context,
            //       MaterialPageRoute(builder: (context) => ),
            //     );
            //   },
            //   child: Text(
            //     'Go to previous Screen',
            //   ),
            // ),
            Text(currentQuestion.text, style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            SizedBox(height: 30),
            ...currentQuestion.answers.map((answer) {
              return (AnswerBtn(answerText: answer, ontab: () {}));
            }),
          ],
        ),
      ),
    );
  }
}
