import 'package:quizzyy/models/quiz_questions.dart';

List questions = [
  
   const QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  
  const QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  
  const QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  // ignore: prefer_const_constructors
  const QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  const QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  
  const QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateState()',
    ],
  ),

  const QuizQuestion(
    'What are some key advantages of Flutter over alternate frameworks?',
    [
      'All of them',
      'Rapid cross-platform application development and debugging tools',
      'Future-proofed technologies and UI resources',
      'Strong supporting tools for application development and launch',
    ],
  ),

  const QuizQuestion(
    'What element is used as an identifier for components when programming in Flutter?',
    [
      'Keys',
      'Widgets',
      'Elements',
      'Serial',
    ],
  ),

  const QuizQuestion(
    'True or false: Flutter boasts improved runtime performance over most application frameworks.',
    [
      'true',
      'false',
    ],
  ),

  const QuizQuestion(
    'Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?',
    [
      'runApp()',
      'main()',
      'container()',
      'root()',
    ],
  ),

  const QuizQuestion(
    'What is the key configuration file used when building a Flutter project?',
    [
      'pubspec.yaml',
      'pubspec.xml',
      'config.html',
      'root.xml',
    ],
  ),


];