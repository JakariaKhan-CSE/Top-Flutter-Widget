import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:flutter/material.dart';

import 'cupertinoalertDialog.dart';



class CupertinoAlertDialog extends StatelessWidget {
  String code = ''' import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogWidget extends StatelessWidget {
  const CupertinoAlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Center(
      child: CupertinoButton(
        onPressed: (){
showCupertinoDialog(context: context, builder: (context) => CupertinoAlertDialog(
  title: Text('Alert'),
  content: Text('Are you subcribe my channel?'),
  actions: [
    CupertinoDialogAction(child: Text('No'),
      isDestructiveAction: true,
    onPressed: (){
      Navigator.pop(context);
    },
    ), //see red
    CupertinoDialogAction(child: Text('Yes'),
     
      onPressed: (){
        Navigator.pop(context);
      },),
  ],
),);
        },
        child: Text('CupertinoAlert Dialog'),
      ),
    ));
  }
}
 ''';
  CupertinoAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoAlertDialogWidget(),));
            }, child: Text('Widget show')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodeShow(code: code, name: 'Cupertino Alert Dialog',),));
            }, child: Text('Code show')),
          ],
        ),
      ),
    );
  }
}
