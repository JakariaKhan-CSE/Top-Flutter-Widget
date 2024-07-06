import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  static const snackbar = SnackBar(content: Text('Deleted Button pressed'));
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Chip(
          label: Text('This is a Flutter chip'),
          onDeleted: (){
            debugPrint('Do something');
ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
        ),
      ),
    );
  }
}
