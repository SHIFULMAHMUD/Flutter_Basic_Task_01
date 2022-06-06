import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({Key? key,required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: Colors.black,
      ),
    );
  }
}


