import 'package:flutter/material.dart';

void main() => runApp(StartApp());

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter First App'),
        ),
        body: Text('Body Part'),
      ),
    );
  }
}
