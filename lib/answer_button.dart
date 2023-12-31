import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{

const AnswerButton({super.key , required this.answerText , required this.onTap});
final String answerText ;
final void Function() onTap ;


  @override
  Widget build (BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15), // for adding margin to the elements u need to wrap them inside a container.
      child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                
                padding: const EdgeInsets.symmetric(vertical: 15 , horizontal: 40),
                backgroundColor: Colors.tealAccent,
                foregroundColor: Colors.black ,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              ),
              child: Text(answerText , textAlign: TextAlign.center,), // can't use const here because answerText is a variable.
            ),
    );
  }
}