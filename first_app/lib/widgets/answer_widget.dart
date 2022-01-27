import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() callBack;
  final String? answerText;
  Answer({required this.callBack,required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 9.0,
        color: Colors.deepPurpleAccent,
        onPressed: callBack,
        child: Text(
          answerText!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
