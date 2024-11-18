import 'package:flutter/material.dart';

class AspectRationWidget extends StatefulWidget {
  const AspectRationWidget({super.key});

  @override
  State<AspectRationWidget> createState() => _AspectRationWidgetState();
}

class _AspectRationWidgetState extends State<AspectRationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            width: double.infinity,
             height: 150,
           // height: 300,
            child: AspectRatio(
              // such as 16:9, where the first number represents the width and the second represents the height
                aspectRatio: 16/9,  // TV and monitor Aspect ration
              child: Container(
color: Colors.blueGrey,
              ),
            ),
          )),
    );
  }
}
