import 'package:every_flutter_widget/ui/Long%20Press%20Draggable/long_press_draggable_widget.dart';
import 'package:every_flutter_widget/ui/Reorderable%20List%20View/widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/interactive%20viewer/interactiveViewerWidget.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferred_size_widget.dart';
import 'package:every_flutter_widget/ui/table/widget.dart';
import 'package:flutter/material.dart';

class TableBtn extends StatelessWidget {
  final String text = ''' import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Center(
    child: Padding(padding: EdgeInsets.all(15),
    child: Table(
      border: TableBorder.all(color:  Colors.white30),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          // first row which color redAccent
          decoration: BoxDecoration(color: Colors.redAccent),
          children: [
            TableCell(
              // first cell
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(padding: EdgeInsets.all(8),
                  child: Text('Title 1'),),),
            TableCell(
              // 2nd cell
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Padding(padding: EdgeInsets.all(8),
                child: Text('Title 2'),),),
            TableCell(
              // third cell
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Padding(padding: EdgeInsets.all(8),
                child: Text('Title 3'),),)
          ]
        ),
        // now make 30 table list row
        ...List.generate(30, (index) {
          return TableRow(
            // all row without first row which color green
              decoration: BoxDecoration(color: Colors.green),
              children: [
                TableCell(
                  // first cell
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(padding: EdgeInsets.all(8),
                    child: Text('Cell 1'),),),
                TableCell(
                  // 2nd cell
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(padding: EdgeInsets.all(8),
                    child: Text('Cell 2'),),),
                TableCell(
                  // third cell
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(padding: EdgeInsets.all(8),
                    child: Text('Cell 3'),),)
              ]
          );
        },)
      ],
    ),),
  ),
),
    );
  }
}
''';
  const TableBtn({super.key});

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
                        builder: (context) => TableWidget(),
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
                            CodeShow(code: text, name: 'Table'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
