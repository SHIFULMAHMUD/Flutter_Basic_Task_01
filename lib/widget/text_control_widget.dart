import 'package:flutter/material.dart';

class TextControlWidget extends StatefulWidget {
   TextControlWidget({Key? key,required this.function}) : super(key: key);

  Function function;

  @override
  State<TextControlWidget> createState() => _TextControlWidgetState();
}

class _TextControlWidgetState extends State<TextControlWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Change Text'),
      onPressed: () {
        widget.function("Welcome to Flutter!");
      },
    );
  }
}
