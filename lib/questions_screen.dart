import 'package:flutter/material.dart';

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
      width: double.infinity, // assigning this column the whole screen we can also do "mainAxisSize: MainAxisSize.min" inside the column.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The Question"),
          const SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 1")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 2")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 3")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 4")),
        ],
      ),
    );
  }
}
