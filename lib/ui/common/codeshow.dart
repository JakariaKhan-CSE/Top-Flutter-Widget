import 'package:flutter/material.dart';

class CodeShow extends StatelessWidget {
  final String code;
  final String name;
  const CodeShow({super.key, required this.code, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('${name}'),centerTitle: true,),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height/1.4,
            width: double.infinity,
            color: Colors.grey.shade300,
            child: SingleChildScrollView(
              child: SelectableText(code),
            ),
          ),
        ),
      ),
    );
  }
}
