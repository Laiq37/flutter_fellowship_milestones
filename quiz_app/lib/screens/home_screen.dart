import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text('Home',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Theme.of(context).colorScheme.background)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon
                  Icon(
                    Icons.quiz_outlined,
                    size: 60,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  // title
                  Text(
                    'Quizizz',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 3,
              // Scrollable List of quizzes
              child: QuizList(),
            )
          ],
        ));
  }
}
