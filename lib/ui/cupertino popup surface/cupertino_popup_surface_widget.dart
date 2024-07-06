import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopupSurfaceWidget extends StatelessWidget {
  const CupertinoPopupSurfaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: CupertinoButton(
          child: const Text('Click Me'),
          onPressed: (){
            showCupertinoModalPopup(
                context: context,
                builder: (context) => CupertinoPopupSurface(
                  child: Container(
                    color: CupertinoColors.white,
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 400,
                    child: Center(
                      child: CupertinoButton(
                        child: const Text('Close'),
                        onPressed: ()=>Navigator.of(context).pop(),
                      ),
                    ),
                  ),
                ),
            );
          },
        ),
      ),
    );
  }
}
