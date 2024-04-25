import 'package:flutter/material.dart';
import '../Components/constantsFiles.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../Lists/quiz_brain.dart'; // Importing the original QuizBrain class

class QuizState extends ChangeNotifier {
  final QuizBrainInstance _quizBrainInstance = QuizBrainInstance(); // Initialize QuizBrain instance
  final List<Icon> _scoreCounterKeeper = [];

  QuizBrainInstance get quizBraine => _quizBrainInstance;
  List<Icon> get scoreCountKeeper => _scoreCounterKeeper;

  void checkAnswer(bool userPickedAnswer, BuildContext context) {
    bool correctAnswer = _quizBrainInstance.getCorrectAnswer();
    if (_quizBrainInstance.endOfQuiz()) {
      Alert(
              context: context,
              title: 'Finished',
              desc: 'You\'ve reached the end of the quiz.')
          .show();
      _quizBrainInstance.resetPointer();
      _scoreCounterKeeper.clear();
    }
    if (userPickedAnswer == correctAnswer) {
      _scoreCounterKeeper.add(
        const Icon(
          Icons.check,
          color: greenColor1,
        ),
      );
    } else {
      _scoreCounterKeeper.add(
        const Icon(
          Icons.close,
          color: redColor1,
        ),
      );
    }

    _quizBrainInstance.nextQuestion();
    notifyListeners();
  }
}
