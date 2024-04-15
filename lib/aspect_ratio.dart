import 'package:flutter/material.dart';
class AspectRationWidgetTest extends StatelessWidget {
  const AspectRationWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
height: 250,
      width: double.infinity,
      color: Colors.orangeAccent,
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 16/9,
        child: Container(
          color: Colors.grey,
        ),
      ),
    );
  }
}
