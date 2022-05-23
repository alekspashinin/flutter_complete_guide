import 'package:flutter/material.dart';

void main() => runApp(StartApp());

class StartApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return StartAppState();
  }
}

class StartAppState extends State<StartApp> {

  var questionIndex = 0;

  void clickAnswer(){
    setState(() {
      questionIndex ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?',
      'What\'s your favorite car ?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: clickAnswer,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: clickAnswer,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: clickAnswer,
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: clickAnswer,
              child: Text('Answer 4'),
            )
          ],
        ),
      ),
    );
  }
}
