import 'package:flutter/material.dart';
import 'package:flutter_assignment/widget/text_control_widget.dart';
import 'package:flutter_assignment/widget/text_widget.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  String text = 'Hello World!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextWidget(text: text),
              SizedBox(height: 50,),
              TextControlWidget(function: (text){
                setState(() {
                  this.text = text;
                });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
