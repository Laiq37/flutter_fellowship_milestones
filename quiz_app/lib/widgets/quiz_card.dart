import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  final String quizName;
  final IconData quizIcon;
  final VoidCallback onTap;

  const QuizCard(
      {Key? key,
      required this.quizName,
      required this.quizIcon,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        color: Theme.of(context).colorScheme.surface,
        child: ListTile(
          // Quiz Icon
          leading: Icon(
            quizIcon,
            color: Theme.of(context).iconTheme.color,
            size: Theme.of(context).iconTheme.size,
          ),
          //Quiz Name
          title: Text(
            quizName,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          // onPressed functionality
          trailing: IconButton(
              onPressed: onTap,
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).iconTheme.color,
                size: 25,
              )),
        ),
      ),
    );
  }
}
