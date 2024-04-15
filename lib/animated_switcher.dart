import 'package:flutter/material.dart';
class AnimatedSwitcherWidgetTest extends StatefulWidget {
  const AnimatedSwitcherWidgetTest({super.key});

  @override
  State<AnimatedSwitcherWidgetTest> createState() => _AnimatedSwitcherWidgetTestState();
}

class _AnimatedSwitcherWidgetTestState extends State<AnimatedSwitcherWidgetTest> {
  int _count=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(duration: Duration(milliseconds: 400),
            child: Text('$_count',style: TextStyle(fontSize: 48),
              key: ValueKey(_count),
            ),
            transitionBuilder: (child, animation) => ScaleTransition(scale: animation,child: child,),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              _count++;
            });
          }, child: Text('Add'))
        ],
      ),
    );
  }
}