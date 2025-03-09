import 'package:flutter/material.dart';
import 'package:quize_app/data/questions.dart';
import 'package:quize_app/question_summary.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswer, required this.onRestartQuiz});

  final List<String> choosenAnswer;

  final void Function() onRestartQuiz;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final numbTotalQuestions = questions.length;
    final numbCorrectQuestions =
        summaryData
            .where(
              (element) => element['correct_answer'] == element['user_answer'],
            )
            .length;

    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You did it! Your score is: $numbCorrectQuestions You Answered $numbCorrectQuestions out of $numbTotalQuestions questions correctly',
              ),
              SizedBox(height: 30),
              QuestionSummary(summaryData: summaryData),
              SizedBox(height: 30),
              ElevatedButton(onPressed: onRestartQuiz, child: Text('Restart Quiz')),
            ],
          ),
        ),
      ),
    );
  }
}
