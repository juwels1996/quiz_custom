import 'package:basic_flutter/questiontext.dart';
import 'package:basic_flutter/rating.dart';
import 'package:flutter/material.dart';
import 'package:basic_flutter/answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var question=[
  {'questionText' :  '1.Which one is mutable widget?',
  'answers':['Statefull','Stateless','Container','SizedBox']
  },

{'questionText' : '2.Are stateless widget support setstate?',
  'answers':['yes','no','Sometimes yes','It support when we use custom widget']
},
    { 'questionText' : '3.why we use build method',
      'Answers':['yes','no','Sometimes yes','It support when we use custom widget']
    },

{'questionText' : '4.Why we need to use mixin',
  'answers':['because dart not support inheritannce','without any reason','Sometimes yes','It support when we use custom widget']
},
{'questionText' : '5.Are flutter better then react js?',
  'answers':['yes','no','Sometimes yes','It support when we use custom widget']
}
  ];
  var questionIndex=0;

  void _answer(){
    setState(() {
      questionIndex=questionIndex+1;
      print("You got 10 marks");
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Question(
              question[questionIndex]['questionText'] as String
          ),
          ...(question[questionIndex]['answers'] as List<String>).map((answer){
            return Answer(_answer, answer);
          }).toList()
          

        ],
      ),
    );
  }
}


