import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/widgets/quiz_card.dart';

class QuizList extends StatelessWidget {
  const QuizList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(), //for hiding scrolling glow affect
      child: ListView(
        children: [
          // List of Quiz
          ...listOfQuiz.map(
            (quiz) => QuizCard(
              quizName: quiz.keys.first,
              quizIcon: Icons.calculate,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => QuizScreen(
                          quiz: quiz,
                        )));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
