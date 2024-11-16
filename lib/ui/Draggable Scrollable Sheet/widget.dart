import 'package:flutter/material.dart';

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
          title: Text('Item $index'),
        ),),
  ),),
    );
  }
}
