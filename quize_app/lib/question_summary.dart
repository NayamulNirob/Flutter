import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                final bool isCorrect =
                    data['user_answer'] == data['correct_answer'];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue, // Add a background color
                        ),
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              data['question'] as String,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              // data['user_answer'] as String,
                              'Your Answer: ${data['user_answer']}',
                              style: GoogleFonts.roboto(
                                color:
                                    isCorrect
                                        ? Color.fromARGB(255, 111, 231, 63)
                                        : const Color.fromARGB(255, 248, 1, 1),
                              ),
                            ),
                            Text(
                              // data['correct_answer'] as String,
                              'Correct Answer: ${data['correct_answer']}',
                              style: GoogleFonts.roboto(
                                color: Color.fromARGB(255, 111, 231, 63),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Divider(color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
