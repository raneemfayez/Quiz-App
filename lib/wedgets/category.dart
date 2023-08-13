import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String? testName;
  final Function()? onTabFunction;
  const CategoryContainer({this.onTabFunction, this.testName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTabFunction,
        child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Color(0xff2C752E)),
            child: Text(
              testName!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )));
  }
}
