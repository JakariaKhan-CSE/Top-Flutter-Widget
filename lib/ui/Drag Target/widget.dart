import 'package:flutter/material.dart';

class DragTargetWidget extends StatefulWidget {
  const DragTargetWidget({super.key});

  @override
  State<DragTargetWidget> createState() => _DragTargetWidgetState();
}

class _DragTargetWidgetState extends State<DragTargetWidget> {
  Color caughtColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SizedBox(
  width: double.infinity,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Draggable(
        data: Colors.orangeAccent,
          // this container can drag but this position still here. here one copy drag
          child: Container(
            height: 100,
            width: 100,
            color: Colors.pink,
            child: Center(
              child: Text('Box'),
            ),
          ),
          onDraggableCanceled: (velocity, offset) {

          },
        // this container move
          feedback: Container(
            height: 150,
            width: 150,
            color: Colors.teal.withOpacity(0.5),  // when drag this color container move
            child: Center(
              child: Text('Box',style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 18
              ),),
            ),
          ),),
      DragTarget(
        onAccept: (Color color) {
          caughtColor = color;
        },
        builder: (context, candidateData, rejectedData) =>
        // drag container target
       Container(
         height: 200,
         width: 200,
         color: candidateData.isEmpty ? caughtColor : Colors.grey.shade900,
         child: Center(child: Text('Drag here')),
       ) ,)

    ],
  ),
),
    );
  }
}
