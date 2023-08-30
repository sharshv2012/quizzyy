import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz, {super.key}); // adding a method "StartScreen" as an argument.
  
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            /* Image.asset(
              "assets/images/pngwing.com.png",
              width: 300, //better approach for attaining opacity.
              color: const Color.fromARGB(150, 255, 255, 255) //Set first no. from 0 to 255 for opacity.
            ), */
           Opacity( //Alternative approach for opacity
            opacity: 0.5,
            child: Image.asset(
              "assets/images/pngwing.com.png",
              width: 300,
            ),
          ),
          const SizedBox(height: 80), // gives a blank space.
          const Text(
            "Learn Flutter The Fun Way.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon( // for using icon use icon constructor and replace child by label.
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quizz!"),
          )
        ],
      ),
    );
  }
}
