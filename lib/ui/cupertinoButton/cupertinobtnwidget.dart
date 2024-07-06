import 'package:every_flutter_widget/ui/cupertinoButton/cupertinobtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWidget extends StatelessWidget {
  const CupertinoButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
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
