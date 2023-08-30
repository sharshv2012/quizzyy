import 'package:flutter/material.dart';
import 'package:quizzyy/questions_screen.dart';
import 'package:quizzyy/start_screen.dart';

class Quizz extends StatefulWidget {
  
  const Quizz({super.key});

  @override
  State<Quizz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quizz> {
  /* Widget ? activeScreen ; // assigning the widget StartScreen to a variable oftype Widget. 
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  } */
 // using ternary conditional statement for lifting the state up insted of whole init thing.
  var activeScreen = 'start_screen';
  void switchScreen()  {
    setState(() {
      activeScreen = 'questions_screen'; //const QuestionsScreen();(if not using the ternary way)
    });
  }
  

  @override
  Widget build(context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.amberAccent , Colors.tealAccent
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start_screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(), // ternary exprression we can also use if / else statement
        ),
      ),
    );
  }
}