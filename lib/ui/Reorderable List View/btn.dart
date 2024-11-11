import 'package:every_flutter_widget/ui/Long%20Press%20Draggable/long_press_draggable_widget.dart';
import 'package:every_flutter_widget/ui/Reorderable%20List%20View/widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/interactive%20viewer/interactiveViewerWidget.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferred_size_widget.dart';
import 'package:flutter/material.dart';

class ReorderableListBtn extends StatelessWidget {
  final String text = '''import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({super.key});

  @override
  State<ReorderableListViewWidget> createState() => _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  // 30 ta integer list genearte hobe
  final List<int> items = List<int>.generate(30, (int index)=> index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Reorderable List View'),),
      body: ReorderableListView(children: List.generate(
          items.length,  // list item er length
          (index) {
            return ListTile(
              key: Key('\$index'),  // this is very important
              tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,  // tile color show based on even or odd index
              title: Text('Item \${items[index]}'),
              trailing: Icon(Icons.drag_handle_sharp),
            );
          },), onReorder: (oldIndex, newIndex) {
//main logic
      setState(() {
        if(oldIndex<newIndex)
          {
              newIndex -= 1;
          }
        final int item = items.removeAt(oldIndex);
        items.insert(newIndex, item);
      });
          },)
    );
  }
}
 ''';
  const ReorderableListBtn({super.key});

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
                        builder: (context) => ReorderableListViewWidget(),
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
                            CodeShow(code: text, name: 'ReorderAble ListView'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
