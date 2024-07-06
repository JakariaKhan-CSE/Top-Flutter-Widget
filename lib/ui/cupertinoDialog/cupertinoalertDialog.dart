import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogWidget extends StatelessWidget {
  const CupertinoAlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(

        ),
        child: Center(
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
