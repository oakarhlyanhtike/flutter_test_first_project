import 'package:first_app/widgets/question_widget.dart';
import 'package:flutter/material.dart';

import 'answer_widget.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function questionAnswer;
  Quiz({required this.question,required this.questionIndex,required this.questionAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questionText:
                question[questionIndex]['questionTextKey'].toString()),
        ...(question[questionIndex]['answerValue'] as List<String>)
            .map((answer) {
          return Answer(
            callBack: () => questionAnswer, //() => anornemous ပုံစံမျိုးရေးပေးကသည်။
            answerText: answer,
          );
        }).toList(),
      ],
    );
  }
}
