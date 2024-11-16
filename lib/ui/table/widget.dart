import 'package:flutter/material.dart';

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
