import 'package:every_flutter_widget/ui/Cupertino%20Picker/cupertino_picker_widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/cupertino%20page%20Scaffold/cupertino_page_scaffold_widget.dart';
import 'package:every_flutter_widget/ui/cupertino%20page%20route/cupertino_page_route_widget.dart';
import 'package:flutter/material.dart';


class CupertinoPickerBtn extends StatelessWidget {
  String code = '''import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerWidget extends StatefulWidget {
  CupertinoPickerWidget({super.key});

  @override
  State<CupertinoPickerWidget> createState() => _CupertinoPickerWidgetState();
}

class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
  int _selected_value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
              child: Text('Value = \$_selected_value'),
              onPressed: () => showCupertinoModalPopup(
                    context: context,
                    builder: (context) => SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: CupertinoPicker(
                        scrollController:
                            FixedExtentScrollController(initialItem: 1),
                        backgroundColor: Colors.white,
                        itemExtent: 30,
                        onSelectedItemChanged: (int value) {
                          setState(() {
                            _selected_value = value;
                          });
                        },
                        children: const [
                          Text('0'),
                          Text('1'),
                          Text('2'),
                          Text('3'),
                          Text('4'),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
''';
  CupertinoPickerBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPickerWidget(),));
            }, child: Text('Widget show')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodeShow(code: code, name: 'Cupertino Picker',),));
            }, child: Text('Code show')),
          ],
        ),
      ),
    );
  }
}
