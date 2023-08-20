import 'package:flutter/material.dart';
import 'package:quiz_app/Global/quiz_data.dart';
import 'package:quiz_app/Screens/test_page.dart';

class CategoryContainer extends StatelessWidget {
  // final String? testName;
  // final Function()? onTabFunction;
  final int? index;
  CategoryContainer({this.index});

  List quizzText = [
    "Sport Test",
    "History Test",
    "General Test",
    "IQ Test",
    "Math Test",
    "English Test"
  ];
  List quizzColor = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.grey,
    Colors.deepOrange,
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  QuestionScreen(categoryMap: dataList[index!]),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizzColor[index!],
              border: Border.all(width: 1, color: Colors.lightGreen)),
          child: Center(
              child: Center(
            child: Text(
              quizzText[index!],
              style: TextStyle(fontSize: 34),
            ),
          )),
        ),
      ),
    );
  }
}
