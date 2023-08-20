import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/Screens/score_page.dart';

class QuestionScreen extends StatefulWidget {
  final Map categoryMap;
  QuestionScreen({super.key, required this.categoryMap});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int index = 0;
  int totalScore = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.categoryMap["color"],
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
                "${index + 1}/ ${(widget.categoryMap["data"] as List).length}"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1 / 3,
            ),
            Text(widget.categoryMap["CategoryName"])
          ],
        ),
        actions: [
          Image.asset("assets/images/running-test.png"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          widget.categoryMap["data"][index]["question"],
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              for (int i = 0;
                  i <
                      (widget.categoryMap["data"][index]["answers"] as List)
                          .length;
                  i++)
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            widget.categoryMap["color"]),
                      ),
                      onPressed: () {
                        totalScore = totalScore +
                            widget.categoryMap["data"][index]["answers"][i]
                                ["score"] as int;
                        if (index + 1 <
                            (widget.categoryMap["data"] as List).length) {
                          setState(() {
                            index++;
                          });
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => ScoreScreen(
                                totalScore: totalScore,
                                totalNumOfQuistion: index + 1,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        widget.categoryMap["data"][index]["answers"][i]["ans"],
                        style: TextStyle(color: Colors.black),
                      )),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
