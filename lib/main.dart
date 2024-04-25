import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/provider.dart';
import '../Buttons/my_buttons.dart';
import '../Components/constantsFiles.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => QuizState(),
        child: const MyquizApp(),
      ),
    );

class MyquizApp extends StatelessWidget {
  const MyquizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:'QuizzlerGame',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: blueColor1,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizButtons(),
          ),
        ),
      ),
    );
  }
}
