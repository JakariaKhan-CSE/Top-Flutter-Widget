import 'package:every_flutter_widget/ui/Long%20Press%20Draggable/long_press_draggable_widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/interactive%20viewer/interactiveViewerWidget.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferred_size_widget.dart';
import 'package:flutter/material.dart';

class InterActiveViewerBtn extends StatelessWidget {
  final String text = ''' import 'package:flutter/material.dart';

class Interactiveviewerwidget extends StatefulWidget {
  const Interactiveviewerwidget({super.key});

  @override
  State<Interactiveviewerwidget> createState() => _InteractiveviewerwidgetState();
}

class _InteractiveviewerwidgetState extends State<Interactiveviewerwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: Text('Interactive Viewer(zoom)'),),
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(double.infinity),
          child: Scaffold(
            appBar: AppBar(title: Text('Jakaria'),),
          )),
    );
  }
}
''';
  const InterActiveViewerBtn({super.key});

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
                        builder: (context) => Interactiveviewerwidget(),
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
                            CodeShow(code: text, name: 'InterActive Viewer'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
