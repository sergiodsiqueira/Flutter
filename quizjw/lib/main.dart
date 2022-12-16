import 'package:flutter/material.dart';
import 'package:quizjw/src/screens/screens.dart';

void main() => runApp(const QuizJW());

class QuizJW extends StatelessWidget {
  const QuizJW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Quiz JW',
      home: LoginScreen(),
    );
  }
}
