import 'package:flutter/material.dart';
class BaseLineWidTest extends StatelessWidget {
  const BaseLineWidTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
child: Container(
  width: 200,
  height: 200,
  color: Colors.orange,
  child: Baseline(
    baseline: 50, // 50 instead of 0
    baselineType: TextBaseline.alphabetic,
    child: FlutterLogo(size: 50,),
  ),
),
    );
  }
}
