import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  const ConstrainedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
    body: Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 900,  // ai gulor beshi height width nibe na. Jodi ai width/height na pai tahole double.infinty nibe
          maxHeight: 350  // for example ami cassi 900 width but device er 800 er beshi nei tokhon double.infinty use korbe
        ),
        child: Container(
          color: Colors.pinkAccent,
          width: double.infinity,
        ),
      ),
    ),
    );
  }
}
