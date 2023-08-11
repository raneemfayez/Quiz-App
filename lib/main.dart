import 'package:flutter/material.dart';

import 'Screens/home_page.dart';

void main() {
  runApp(const quizApp());
}

class quizApp extends StatelessWidget {
  const quizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
