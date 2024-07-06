import 'package:every_flutter_widget/ui/Cupertino%20Picker/cupertino_picker_widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/cupertino%20popup%20surface/cupertino_popup_surface_widget.dart';
import 'package:flutter/material.dart';


class CupertinoPopUpsurfaceBtn extends StatelessWidget {
  String code = '''import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopupSurfaceWidget extends StatelessWidget {
  const CupertinoPopupSurfaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
''';
  CupertinoPopUpsurfaceBtn({super.key});

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPopupSurfaceWidget(),));
            }, child: Text('Widget show')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodeShow(code: code, name: 'Cupertino Popup Surface',),));
            }, child: Text('Code show')),
          ],
        ),
      ),
    );
  }
}
