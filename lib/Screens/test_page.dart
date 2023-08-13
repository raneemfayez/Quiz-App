import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/Screens/score_page.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 251, 251),
      appBar: AppBar(
        leading: Center(
            child: Text(
          "Q:1",
          style: TextStyle(fontSize: 20),
        )),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff2C752E),
        title: Center(child: const Text('Questions')),
        actions: [
          Image.asset(
            "assets/images/running-test.png",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Question 1",
              style: TextStyle(
                  fontSize: 35, color: Color.fromARGB(255, 219, 9, 9)),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "In which country was the last World Cup held?",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 140, 137, 137)),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 183, 215, 146),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScoreScreen()),
                    );
                  },
                  child: const Text(
                    "Egypt",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 183, 215, 146),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScoreScreen()),
                    );
                  },
                  child: const Text(
                    "Qatar",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 183, 215, 146),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScoreScreen()),
                    );
                  },
                  child: const Text(
                    "Oman",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 183, 215, 146),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScoreScreen()),
                    );
                  },
                  child: const Text(
                    "Yemen",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
