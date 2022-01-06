import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz.dart';
import 'package:quiz_app/widgets/option_radio_tile.dart';

class QuizScreen extends StatelessWidget {
  //Map of String keys and List of Quiz values
  final Map<String, List<Quiz>> quiz;

  //initial score will be zero
  int score = 0;

  QuizScreen({Key? key, required this.quiz}) : super(key: key);

  Future<void> onSubmitDialog(BuildContext context, String dialogContent) {
    //this dialog box will appear when user will click on submit button.
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Quiz Submitted',
            style: TextStyle(color: Theme.of(context).colorScheme.background),
          ),
          //dialog content
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(dialogContent,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.background)),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                    text: 'Your Score : ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    children: [
                      TextSpan(
                          text: score.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[800],
                              fontSize: 24)),
                      TextSpan(
                          text: " / ${quiz[quiz.keys.first]!.length}",
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ))
                    ]),
              )
              // Text('Your Score is $score/${quiz[quiz.keys.first]!.length}'),
            ],
          ),
          actions: [
            FlatButton(
              textColor: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Ok',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.background)),
            ),
          ],
        );
      },
    ).then((value) => Navigator.pop(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          //BackButton lead to homeScreen
          leading: BackButton(
            color: Theme.of(context).colorScheme.background,
            onPressed: () => Navigator.pop(context),
          ),
          //title will be based on Quiz name
          title: Text(
            quiz.keys.first,
            style: TextStyle(color: Theme.of(context).colorScheme.background),
          ),
          actions: [
            //submit button
            TextButton(
                onPressed: () {
                  onSubmitDialog(
                      context,
                      //based on the score dialog content will be passed
                      quiz[quiz.keys.first]!.length == score
                          ? 'Congratulation!, You answered all the question successfully'
                          : 'Failed to answered all the question successfully');
                },
                //submit text
                child: Text(
                  'Submit',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.background),
                ))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          children: [
            //Items in a Quiz item
            ...quiz[quiz.keys.first]!.map((q) => Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //question
                        Text(
                          q.question,
                          style:
                              TextStyle(color: Colors.grey[300], fontSize: 20),
                        ),
                        //options
                        OptionRadiaTile(
                          options: q.options,
                          getScore: (
                            String value,
                            String previousValue,
                          ) {
                            //comparing the selectedOptionValue to answer if its true, score will be +1
                            if (value == q.answer) {
                              score += 1;
                            } else if (previousValue == q.answer) {
                              //comparing previousSelectedValue to answer if its true, score will be -1
                              score -= 1;
                            }
                          },
                        ),
                        Divider(
                          color: Theme.of(context).colorScheme.primary,
                          thickness: 2,
                        ),
                      ]),
                ))
          ],
        ));
  }
}
