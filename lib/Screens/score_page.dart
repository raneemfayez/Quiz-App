import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'home_page.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 251, 251),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 1800,
          ),
          Container(
            child: RichText(
              text: TextSpan(
                text: 'Hello ',
                style: TextStyle(
                    color: Color.fromARGB(255, 243, 114, 39), fontSize: 30),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'Raneem',
                      style: TextStyle(
                          color: Color.fromARGB(255, 6, 86, 60),
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: ' your score is'),
                  TextSpan(
                      text: ' 15/20 ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 6, 86, 60),
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 140,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 183, 215, 146),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text(
                  "Play Again",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
