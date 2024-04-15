import 'dart:ui';

import 'package:flutter/material.dart';
class BackDropFilterTest extends StatelessWidget {
  const BackDropFilterTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text('0'*10000,style: TextStyle(
          color: Colors.green
        ),),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0
              ),
              child: Container(
                height: 250,
                width: 250,
                alignment: Alignment.center,
                child: Text('Blur',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        )
      ],
    );
  }
}
