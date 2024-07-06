import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:flutter/material.dart';

import 'cupertinoContextMenuWidget.dart';







class CupertinoContextMenuButtonPage extends StatelessWidget {
  String code = '''
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CupertinoContextMenu(
            child: Image.network('https://i.pinimg.com/736x/98/ae/15/98ae159aa1bb8b4243fbe1f9e27d1b9f.jpg'),
            actions: [
              CupertinoContextMenuAction(child: const Text('Action one'),
              onPressed: (){
                Navigator.pop(context);
              },
              ),
              CupertinoContextMenuAction(child: const Text('Action Two'),
              onPressed: (){
                Navigator.pop(context);
              },
              )
            ],
          ),
        ),
      ),
    );
  }
}

  ''';
  CupertinoContextMenuButtonPage({super.key});

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
               Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoContextMenuWidget(),));
            }, child: Text('Widget show')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodeShow(code: code, name: 'Cupertino Context Menu',),));
            }, child: Text('Code show')),
          ],
        ),
      ),
    );
  }
}
