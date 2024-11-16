import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(child: ElevatedButton(onPressed: () {
showDialog(context: context, builder: (context) {
  return AlertDialog(
    actions: [
      TextButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: Text('Close'))
    ],
    title: Text('Jakaria'),
    contentPadding: EdgeInsets.all(20),
    content: Text('This is a Alert Dialog'),
  );
},);
}, child: Text('Show  Alert Dialog')),),
    );
  }
}
