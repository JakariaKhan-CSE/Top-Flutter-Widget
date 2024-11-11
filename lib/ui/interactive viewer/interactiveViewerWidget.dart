import 'package:flutter/material.dart';

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
