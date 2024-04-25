import '../Lists/lists.dart';

class QuizBrainInstance {
  int _questionNumericalOrder = 0;

  final List<QuestionsScope> _onlyBankQuestions = [
    QuestionsScope(q: 'Some cats are actually allergic to humans', a: true),
    QuestionsScope(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    QuestionsScope(q: 'Approximately one quarter of human bones are in the feet.', a: true),
    QuestionsScope(q: 'A slug\'s blood is green.', a: true),
    QuestionsScope(q: 'Buzz Aldrin\'s mother\'s maiden name was "Moon".', a: true),
    QuestionsScope(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    QuestionsScope(q: 'No piece of square dry paper can be folded in half more than 7 times.', a: false),
    QuestionsScope(q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', a: true),
    QuestionsScope(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    QuestionsScope(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    QuestionsScope(q: 'Google was originally called "Backrub".', a: true),
    QuestionsScope(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    QuestionsScope(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
     QuestionsScope(q: 'Some cats are actually allergic to humans', a: true),
    QuestionsScope(q: 'You can lead a cow down stairs but not up stairs.', a: false),

  ];

  bool endOfQuiz() {
    return _questionNumericalOrder >= _onlyBankQuestions.length - 1;
  }

  void resetPointer() {
    _questionNumericalOrder = 0;
    scoreKeeper11.clear();
  }

  void nextQuestion() {
    if (_questionNumericalOrder < _onlyBankQuestions.length - 1) {
      _questionNumericalOrder++;
    }
  }

  String getQuestionTex() {
    return _onlyBankQuestions[_questionNumericalOrder].questionContext;
  }

  bool getCorrectAnswer() {
    return _onlyBankQuestions[_questionNumericalOrder].thequestionsAnswer;
  }
}
