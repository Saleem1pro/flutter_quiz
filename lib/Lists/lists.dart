import 'package:flutter/material.dart';

class QuestionsScope {
  late String questionContext;
  late bool thequestionsAnswer;

  QuestionsScope({required q, required a}) {
    questionContext = q;
    thequestionsAnswer = a;
  }
}

List<Icon> scoreKeeper11 = [];
