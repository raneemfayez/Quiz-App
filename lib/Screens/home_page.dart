import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/wall.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              "assets/images/quiz.png",
              width: 180,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "ITI Quiz app",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow,
                  fontFamily: "Pacifico",
                ),
              ),
            ),
            Text(
              "We Are Creative, Enjoy our app",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: "Pacifico",
              ),
            ),
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, fixedSize: const Size(320, 30)
                  // Background color
                  ),
              child: Text(
                'Start',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
