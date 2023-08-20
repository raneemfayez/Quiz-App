import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/Global/quiz_data.dart';
import 'package:quiz_app/Screens/category_page.dart';
import 'package:quiz_app/Screens/home_page.dart';

class ScoreScreen extends StatelessWidget {
  final int totalScore;
  final int totalNumOfQuistion;
  ScoreScreen(
      {super.key, required this.totalScore, required this.totalNumOfQuistion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hello , ",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Dancing Script")),
                  Text(
                    "${userNameControler.text}",
                    style: TextStyle(fontSize: 18, color: Color(0xFF2C752E)),
                  )
                ],
              ),
              Text("Your Score is ${totalScore}/${totalNumOfQuistion}",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script")),
            ],
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFF2C752E)),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()),
                (Route<dynamic> route) => false,
              );
            },
            child: Text("Play again",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Dancing Script")),
          ),
        ],
      ),
    );
  }
}
