import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CloseButton(
          onPressed: (){
            debugPrint('Do something');
          },
          color: Colors.red,
        ),
      ),
    );
  }
}
