import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/home_page.dart';
import 'package:quiz_app/wedgets/category.dart';

class CategorizationScreen extends StatelessWidget {
  CategorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Exit..."),
                content: Text("Do you want to exit ?"),
                actions: [
                  TextButton(
                    child: Text("No"),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategorizationScreen()));
                    },
                  ),
                  TextButton(
                    child: Text("Yes"),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                ],
              );
            },
          );
          return false;
        },
        child: Scaffold(
          body: Column(
            children: [
              for (int i = 0; i < 6; i++)
                CategoryContainer(
                  index: i,
                )
            ],
          ),
        ));
  }
}
