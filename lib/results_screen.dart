import 'package:flutter/material.dart';
import 'package:quizzyy/data/questions.dart';
import 'package:quizzyy/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key , required this.chosenAnswer,});

  final List<String> chosenAnswer;

  List<Map<String , Object>> getSummaryData(){

    final List <Map<String ,Object>> summary = [];
    for(var i = 0 ; i < chosenAnswer.length ; i++){
      summary.add({ // giving key-value pairs.
        'qustion_index' : i ,
        'question' : questions[i].text,
        'correct_answer' : questions[i].answers[0],
        'user_answer' : chosenAnswer[i]

      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestion = summaryData.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length; // getting no. of correct answers.

    return SizedBox(
      width: double
          .infinity, // assigning this column the whole screen we can also do "mainAxisSize: MainAxisSize.min" inside the column.
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You Answered $numCorrectQuestion Out Of $numTotalQuestions Questions Correctly."),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: const Text("RestartQuizz"))
          ],
        ),
      ),
    );
  }
}
