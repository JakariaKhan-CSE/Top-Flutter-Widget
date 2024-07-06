import 'package:every_flutter_widget/ui/cupertinoActionWidgetCodeShow.dart';
import 'package:every_flutter_widget/ui/cupertinoActionwidgetshow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionWidget extends StatelessWidget {
  const CupertinoActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoActionWidgetShow(),));
              }, child: Text('Widget show')),
              TextButton(onPressed: (){
showDialog(context: context, builder: (context) => AlertDialog(
  title: Text('Code'),
  content: SingleChildScrollView(
    child: SelectableText(
      '''
      import 'package:flutter/cupertino.dart';

class CupertinoActionWidgetShow extends StatelessWidget {
  const CupertinoActionWidgetShow({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Center(
      child: CupertinoButton(

        child: Text('CupertinoActionSheet'),

        onPressed: (){
          showCupertinoModalPopup(context: context, builder: (context) => CupertinoActionSheet(
            title: Text('Every flutter widget'),
            message: Text('This is message'),
            actions: [
              CupertinoActionSheetAction(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Do something')),
              CupertinoActionSheetAction(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Do something else')),
            ],
          ),);
        },
      ),
    ));
  }
}

      '''
    ),
  ),
  actions: [
    TextButton(onPressed: (){
      Navigator.pop(context);
    }, child: Text('Close'))
  ],
),);
              }, child: Text('See Code using AlertDialog')),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoActionWidgetCodeShow(),));
              }, child: Text('See code another page'))
            ],
          ),
        )
    );
  }
}

