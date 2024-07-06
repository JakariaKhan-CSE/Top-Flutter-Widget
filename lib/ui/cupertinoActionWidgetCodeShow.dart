import 'package:flutter/material.dart';

class CupertinoActionWidgetCodeShow extends StatelessWidget {
  const CupertinoActionWidgetCodeShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(12),
          height: 500,
          width: double.infinity,
          color: Colors.grey.shade300,
          child: SingleChildScrollView(
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
        ),
      ),
    );
  }
}
