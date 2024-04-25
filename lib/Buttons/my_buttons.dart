import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/constantsFiles.dart';
import '../Providers/provider.dart';

class QuizButtons extends StatelessWidget {
  const QuizButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the QuizState instance
    final thequizState = Provider.of<QuizState>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                thequizState.quizBraine.getQuestionTex(),
                textAlign: TextAlign.center,
                style: headingTextStyle1,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                // Call checkAnswer function with the selected answer
                thequizState.checkAnswer(true, context);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
              ),
              child: Text(
                'Yes',
                style: headingTextStyle1,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                // Call checkAnswer function with the selected answer
                thequizState.checkAnswer(false, context);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
              ),
              child: Text(
                'No',
                style: headingTextStyle1,
              ),
            ),
          ),
        ),
        // Display scoreKeeper widgets from quizState
        Row(
          children: thequizState.scoreCountKeeper,
        )
      ],
    );
  }
}
