import 'package:flutter/material.dart';
import './question.dart';
import '/Answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
  var _questionindex = 0;
  
  void _answerQuestion() {
    setState(() {
      _questionindex = _questionindex + 1;
    });

    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favorite color?',
      'what is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: Column(
            children: [
              Question(questions[_questionindex]
              ),
              Answer(_answerQuestion()),
              Answer(_answerQuestion()),
              Answer(_answerQuestion()),
            ],
          ),
        ),
    );
  }
}
