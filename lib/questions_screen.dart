

import 'package:flutter/material.dart';
import 'package:quizzyy/answer_button.dart';
import 'package:quizzyy/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzyy/models/quiz_questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer); // use widget for using argument method in the stateful widget.
    setState(() {
      //when the answerQues method will run it'll set the state again.
      if(currentQuestionIndex < questions.length - 1){
        currentQuestionIndex += 1; 
      }
      
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
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
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              //... is used for spreading (takes all values from list or itrables and are added as , seperated individual items.)
              return AnswerButton(
                answerText: answer,
                onTap: () {

                  answerQuestion(answer);

                },
              );
            }), // map will pass the provided functions or any passed functionality to it's listItems.
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
