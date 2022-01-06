import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizizz',
      theme: ThemeData(
          unselectedWidgetColor: Colors.white,
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.cyan,
              accentColor: Colors.yellow,
              cardColor: Colors.grey[300],
              backgroundColor: Colors.blueGrey[800]),
          iconTheme: IconThemeData(color: Colors.yellow[800], size: 40)),
      home: const HomeScreen(),
    );
  }
}
