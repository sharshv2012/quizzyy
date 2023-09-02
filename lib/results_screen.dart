import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
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
