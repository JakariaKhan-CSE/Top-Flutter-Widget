import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:flutter/material.dart';

import 'cupertinobtnwidget.dart';





class CupertinoButtonPage extends StatelessWidget {
  String code = ''' import 'package:every_flutter_widget/ui/cupertinoButton/cupertinobtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWidget extends StatelessWidget {
  const CupertinoButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(child: Text('Enabled'), onPressed: null // button disable hoye thakbe null deyar karone
            ),
            SizedBox(height: 20,),
            CupertinoButton.filled(child: Text('Enabled'), onPressed: (){
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }
}
''';
  CupertinoButtonPage({super.key});

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoButtonWidget(),));
            }, child: Text('Widget show')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodeShow(code: code, name: 'Cupertino Button',),));
            }, child: Text('Code show')),
          ],
        ),
      ),
    );
  }
}
