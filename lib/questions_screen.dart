import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzyy/answer_button.dart';
import 'package:quizzyy/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double
          .infinity, // assigning this column the whole screen we can also do "mainAxisSize: MainAxisSize.min" inside the column.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
          const SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
          const SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
          const SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
