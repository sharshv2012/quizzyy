import 'package:flutter/material.dart';
import 'package:quizzyy/data/questions.dart';

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
    return SizedBox(
      width: double
          .infinity, // assigning this column the whole screen we can also do "mainAxisSize: MainAxisSize.min" inside the column.
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("you answered x out of y questions correctly."),
            const SizedBox(height: 30),
            const Text("List of answers and Questions."),
            const SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: Text("RestartQuizz"))
          ],
        ),
      ),
    );
  }
}
