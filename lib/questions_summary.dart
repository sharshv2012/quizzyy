import 'package:flutter/material.dart';
import 'package:quizzyy/questions_screen.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        // to make it scrollble.
        child: Column(
          children: summaryData.map((data) {
            return Row(children: [
              Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                
                decoration: BoxDecoration(color : data['user_answer'] == data['correct_answer'] ? const Color.fromARGB(255, 91, 236, 221) : const Color.fromARGB(255, 226, 88, 88) , borderRadius: BorderRadius.circular(100)),
                child: Text(
                       (((data['question_index']) as int)  + 1).toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ), // it was giving a null pointer error that's why used null coalescing operator(??).
              Expanded(
                // to make the display tidy.
                child: Column(
                  children: [
                    Text("Ques:  ${data['question'] as String}" , textAlign: TextAlign.center,),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['user_answer'] as String,
                      style: const TextStyle(color: Color.fromARGB(255, 228, 74, 126)),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      data['correct_answer'] as String,
                      style: const TextStyle(color: Color.fromARGB(255, 14, 154, 121)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
//Text(((data['question_index'] as int) + 1).toString()),