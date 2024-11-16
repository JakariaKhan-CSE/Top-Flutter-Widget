import 'package:every_flutter_widget/ui/Draggable%20Scrollable%20Sheet/widget.dart';
import 'package:every_flutter_widget/ui/Long%20Press%20Draggable/long_press_draggable_widget.dart';
import 'package:every_flutter_widget/ui/Reorderable%20List%20View/widget.dart';
import 'package:every_flutter_widget/ui/alert%20dialog/widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/interactive%20viewer/interactiveViewerWidget.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferred_size_widget.dart';
import 'package:every_flutter_widget/ui/table/widget.dart';
import 'package:flutter/material.dart';

class DraggableScrollableBtn extends StatelessWidget {
  final String text = '''import 'package:flutter/material.dart';

class DraggableScrollableSheetWidget extends StatelessWidget {
  const DraggableScrollableSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: DraggableScrollableSheet(
  builder: (context, scrollController) =>
  Container(color: Colors.orange,
  child: ListView.builder(
    controller: scrollController,
    itemCount: 25,
    itemBuilder: (context, index) =>
        ListTile(
          title: Text('Item \$index'),
        ),),
  ),),
    );
  }
}
 ''';
  const DraggableScrollableBtn({super.key});

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
                        builder: (context) => DraggableScrollableSheetWidget(),
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
                            CodeShow(code: text, name: 'Draggable Scrollable Sheet'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
