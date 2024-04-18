import 'package:flutter/material.dart';

class ModalBottomSheetWidget extends StatelessWidget {
  const ModalBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
showModalBottomSheet(context: context, builder: (context) {
  return SizedBox(height: 500,
  child: Center(
    child: ElevatedButton(onPressed: (){
      Navigator.pop(context);
    },child: Text('Close'),),
  ),
  );
},);
        },child: Text('Modal Bottom Sheet'),),
      ),
    );
  }
}
