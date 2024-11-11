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
