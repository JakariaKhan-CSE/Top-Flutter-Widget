import 'package:flutter/material.dart';

class animatedCrossFadeWidget extends StatefulWidget {
  const animatedCrossFadeWidget({super.key});

  @override
  State<animatedCrossFadeWidget> createState() => _animatedCrossFadeWidgetState();
}

class _animatedCrossFadeWidgetState extends State<animatedCrossFadeWidget> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(height: 100,
    width: double.infinity,
    child: TextButton(onPressed: (){
      setState(() {
        _bool = !_bool;
      });
    }, child: Text('Switch',style: TextStyle(
      color: Colors.black
    ),)),),
    AnimatedCrossFade(
        firstChild: Image.asset('images/rose.jpg', width: double.infinity,),
        secondChild: Image.asset('images/sunset.webp', width: double.infinity,),
        crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: Duration(seconds: 1))
  ],
),
    );
  }
}
