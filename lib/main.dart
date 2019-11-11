import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionNumber = 0;

  void answerQuestion() {
    setState(() {
      questionNumber++;
    });
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite animal?',
      'What is your favorite colour'
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionNumber]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  print('Answer 2 chosen');
                }),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 4'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
