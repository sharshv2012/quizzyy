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
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) { //... is used for spreading (takes all values from list or itrables and are added as , seperated individual items.)
              return AnswerButton(answerText: answer, onTap: () {},);
            }),// map will pass the provided functions or any passed functionality to it's listItems. 
            /* this was hardcoded 
            AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
            const SizedBox(height: 10),
            AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
             */
          ],
        ),
      ),
    );
  }
}
