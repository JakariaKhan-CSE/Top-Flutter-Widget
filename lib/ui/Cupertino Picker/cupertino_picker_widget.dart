import 'package:flutter/cupertino.dart';
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
              child: Text('Value = $_selected_value'),
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
