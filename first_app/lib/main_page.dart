
import 'package:first_app/widgets/quiz_widget.dart';
import 'package:first_app/widgets/result_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _question = [
    // {
    //   'questionTextKey': 'What\s your favourite color?',
    //   'answerValue': [
    //     {'textKey': 'Red', 'scoreValue': 10},
    //     {'textKey': 'White', 'scoreValue': 20},
    //     {'textKey': 'Orange', 'scoreValue': 8},
    //     {'textKey': 'Green', 'scoreValue': 12},
    //   ]
    // },
    // {
    //   'questionTextKey': 'What\s your favourite Computer?',
    //   'answerValue': [
    //     {'textKey': 'Lenovo', 'scoreValue': 5},
    //     {'textKey': 'Dell', 'scoreValue': 11},
    //     {'textKey': 'hp', 'scoreValue': 6},
    //     {'textKey': 'Apple', 'scoreValue': 15},
    //     {'textKey': 'Asus', 'scoreValue': 7},
    //   ]
    // },
    // {
    //   'questionTextKey': 'What\s your favourite phone?',
    //   'answerValue': [
    //     {'textKey': 'Oppo', 'scoreValue': 5},
    //     {'textKey': 'Iphone', 'scoreValue': 9},
    //     {'textKey': 'Samsung', 'scoreValue': 6},
    //     {'textKey': 'Vivo', 'scoreValue': 2},
    //     {'textKey': 'Redmi', 'scoreValue': 1},
    //   ]
    // },
    {
      'questionText' : 'What\s your favourite color?',
      'answer' : ['Red','White','Blue','Orange']
    },
    {
      'questionText' : 'What\s your favourite Computer?',
      'answer' : ['Lenovo','Dell','Hp','Apple','Asus']
    },
    {
      'questionText' : 'What\s your favourite phone?',
      'answer' : ['Oppo','Iphone','Samsung','Vivo','Redmi']
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    void questionAnswer(int score) {
     // _totalScore = _totalScore + score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('First Application'),
        ),
        body: (_questionIndex < _question.length)
            ? Quiz(
                questionIndex: _questionIndex,
                questionAnswer: questionAnswer,
                question: _question,
              )
            : Result(resultScore: _totalScore)
            );
  }
}
