import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:flutter/material.dart';

import 'cupertinoactivityindicatorwidget.dart';

class CupertinoActivityIndicator extends StatelessWidget {
  String code = '''import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoIndicatorWidget extends StatelessWidget {
  const CupertinoIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: CupertinoActivityIndicator(
radius: 50,
            color: Colors.pink,
              ),
        ));
  }
}
 ''';
  CupertinoActivityIndicator({super.key});

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoIndicatorWidget(),));
            }, child: Text('Widget show')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodeShow(code: code, name: 'Cupertino Activity Indicator',),));
            }, child: Text('Code show')),
          ],
        ),
      ),
    );
  }
}
