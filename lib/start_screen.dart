import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzyy/data/questions.dart';

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
            opacity: 0.8,
            child: Image.asset(
              "assets/images/pngwing.com.png",
              width: 300,
            ),
          ),
          const SizedBox(height: 80), // gives a blank space.
          Text(
            "Learn Flutter The Fun Way!",
            style: GoogleFonts.lato(
              color: Color.fromARGB(252, 4, 93, 87),
              fontSize: 24 ,
              fontWeight: FontWeight.bold),
            ),
          
          const SizedBox(height: 30),
          OutlinedButton.icon( // for using icon use icon constructor and replace child by label.
            onPressed: (){
              startQuiz();
              questions.shuffle();
            } , 
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
