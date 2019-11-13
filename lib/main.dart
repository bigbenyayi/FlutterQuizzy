import 'package:flutter/material.dart';
import 'package:flutter_course_1/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Giraffe', 'Leopard', 'Lion', 'Rabbit'],
    },
    {
      'questionText': 'What is your favorite colour',
      'answers': ['Green', 'Red', 'Yellow', 'Blue'],
    },
    {
      'questionText': 'Who is your favorite?',
      'answers': ['Ben', 'Ben', 'Ben', 'Ben'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
