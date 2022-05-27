import 'package:flutter/material.dart';

import 'questions.dart';
import 'answer.dart';

void main() => runApp(const StartApp());

class StartApp extends StatefulWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StartAppState();
  }
}

class StartAppState extends State<StartApp> {
  var questionIndex = 0;

  final questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': ['Red', 'Blue', 'White', 'Black']
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Cat', 'Dog', 'Bird', 'Tiger']
    },
    {
      'questionText': 'What\'s your favorite car ?',
      'answers': ['BMW', 'Audi', 'Mercedes', 'Renault']
    }
  ];

  void clickAnswer() {
    if (questionIndex + 1 < questions.length) {
      setState(() {
        questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter First App'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText'] as String),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(clickAnswer, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
