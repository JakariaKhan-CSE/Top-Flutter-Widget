import 'package:flutter/material.dart';

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
              key: Key('$index'),  // this is very important
              tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,  // tile color show based on even or odd index
              title: Text('Item ${items[index]}'),
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
