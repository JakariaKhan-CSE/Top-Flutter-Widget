import 'package:every_flutter_widget/ui/Long%20Press%20Draggable/long_press_draggable_widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferred_size_widget.dart';
import 'package:flutter/material.dart';

class LongPressDraggableBtn extends StatelessWidget {
  final String text = ''' 
  import 'package:flutter/material.dart';

class LongPressDraggableWidget extends StatefulWidget {
  const LongPressDraggableWidget({super.key});

  @override
  State<LongPressDraggableWidget> createState() =>
      _LongPressDraggableWidgetState();
}

class _LongPressDraggableWidgetState extends State<LongPressDraggableWidget> {
  Offset _offset = Offset(100, 150); // initial image location
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Long Press Draggable Widget'),),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                    left: _offset.dx,
                    top: _offset.dy,
                    child: LongPressDraggable(
                        child: Image.asset('images/rose.jpg',height: 250,), // this is original image
                        feedback: Image.asset('images/rose.jpg',height: 150,color: Colors.pink,colorBlendMode: BlendMode.colorBurn,),
                      onDragEnd: (details) {
                        setState(() {
                          double adjustment = MediaQuery.of(context).size.height - constraints.maxHeight;
                          _offset = Offset(details.offset.dx, details.offset.dy-adjustment);
                        });
                      },
                    ))
              ],
            );
        },),
      ),
    );
  }
}

  ''';
  const LongPressDraggableBtn({super.key});

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
                        builder: (context) => LongPressDraggableWidget(),
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
                            CodeShow(code: text, name: 'Long Press Draggable'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
