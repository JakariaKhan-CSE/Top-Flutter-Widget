import 'package:every_flutter_widget/ui/Drag%20Target/widget.dart';
import 'package:every_flutter_widget/ui/Draggable%20Scrollable%20Sheet/widget.dart';
import 'package:every_flutter_widget/ui/Long%20Press%20Draggable/long_press_draggable_widget.dart';
import 'package:every_flutter_widget/ui/Reorderable%20List%20View/widget.dart';
import 'package:every_flutter_widget/ui/alert%20dialog/widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/interactive%20viewer/interactiveViewerWidget.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferred_size_widget.dart';
import 'package:every_flutter_widget/ui/table/widget.dart';
import 'package:flutter/material.dart';

class DragTargetBtn extends StatelessWidget {
  final String text = '''import 'package:flutter/material.dart';

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
 ''';
  const DragTargetBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DragTargetWidget(),
                      ));
                },
                child: Text('Widget Show')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CodeShow(code: text, name: 'Drag Target'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
