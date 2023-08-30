import 'package:flutter/material.dart';
import 'package:quizzyy/answer_button.dart';

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
    return SizedBox(
      width: double
          .infinity, // assigning this column the whole screen we can also do "mainAxisSize: MainAxisSize.min" inside the column.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The Question"),
          const SizedBox(height: 30),
          
          AnswerButton(answerText: "Answer1", onTap: (){}),
          const SizedBox(height: 10),
          AnswerButton(answerText: "Answer1", onTap: (){}),
          const SizedBox(height: 10),
          AnswerButton(answerText: "Answer1", onTap: (){}),
          const SizedBox(height: 10),
          AnswerButton(answerText: "Answer1", onTap: (){}),

        ],
      ),
    );
  }
}
