import 'package:every_flutter_widget/ui/Animated%20Cross%20Fade/btn.dart';
import 'package:every_flutter_widget/ui/Drag%20Target/btn.dart';
import 'package:every_flutter_widget/ui/Draggable%20Scrollable%20Sheet/btn.dart';
import 'package:every_flutter_widget/ui/Long%20Press%20Draggable/LongPressDraggableBtn.dart';
import 'package:every_flutter_widget/ui/Reorderable%20List%20View/btn.dart';
import 'package:every_flutter_widget/ui/alert%20dialog/btn.dart';
import 'package:every_flutter_widget/ui/interactive%20viewer/interactiveViewBtn.dart';
import 'package:every_flutter_widget/ui/material%20banner/materialbannerbtn.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferredSizeBtn.dart';
import 'package:every_flutter_widget/ui/table/btn.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Top Flutter Widget'),
          centerTitle: true,
          elevation: 3,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Materialbannerbtn(),
                          ));
                    },
                    child: Text('1. Material Banner')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PreferredSizedBtn(),
                          ));
                    },
                    child: Text('2. Preferred Size')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LongPressDraggableBtn(),
                          ));
                    },
                    child: Text('3. Long Press Draggable')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InterActiveViewerBtn(),
                          ));
                    },
                    child: Text('4. Interactive Viewer(Zoom in,out)')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReorderableListBtn(),
                          ));
                    },
                    child: Text('5. Reorderable List View')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TableBtn(),
                          ));
                    },
                    child: Text('6. Table')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlertDialogBtn(),
                          ));
                    },
                    child: Text('7. Alert Dialog')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DraggableScrollableBtn(),
                          ));
                    },
                    child: Text('8. Draggable Scrollable Sheet')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DragTargetBtn(),
                          ));
                    },
                    child: Text('9. Drag Target')),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnimatedCrossFadeBtn(),
                          ));
                    },
                    child: Text('10. Animated Cross Faed')),
              ],
            ),
          ),
        ));
  }
}
