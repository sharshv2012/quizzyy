import 'package:flutter/material.dart';
import 'package:quizzyy/start_screen.dart';

class Quizz extends StatefulWidget {
  
  const Quizz({super.key});

  @override
  State<Quizz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quizz> {


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
          child: const StartScreen(),
        ),
      ),
    );
  }
}