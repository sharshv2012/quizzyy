
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(children: [
          Text((((data['question_index'] ?? 0) as int) + 1).toString()), // it was giving a null pointer error that's why used null coalescing operator(??).
          Expanded( // to make the display tidy.
            child: Column(children: [
              Text(data['question'] as String),
              const SizedBox(height: 5,),
              Text(data['user_answer'] as String),
              Text(data['correct_answer'] as String),
            ],),
          )
        ]);
      }).toList(),
    );
  }
}
//Text(((data['question_index'] as int) + 1).toString()),