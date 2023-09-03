import 'package:flutter/material.dart';
import 'package:quizzyy/data/questions.dart';
import 'package:quizzyy/questions_screen.dart';
import 'package:quizzyy/results_screen.dart';
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
  final List<String> selectedAnswers = [];
  var activeScreen = 'start_screen';
  void switchScreen()  {
    setState(() {
      activeScreen = 'questions_screen'; //const QuestionsScreen();(if not using the ternary way)
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'results_screen';
        
      });
    }
  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions_screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if(activeScreen == 'results_screen'){
      screenWidget = ResultsScreen(chosenAnswer: selectedAnswers,);
    }
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
          child: screenWidget, /* activeScreen == 'start_screen'
              ? StartScreen(switchScreen)
              : ,(onSelectAnswer: chooseAnswer,), // ternary exprression we can also use if / else statement  */
        ),
      ),
    );
  }
}