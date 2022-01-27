import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questionText;
  Question({required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Text(
        questionText!,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.purple),
      ),
    );
  }
}
