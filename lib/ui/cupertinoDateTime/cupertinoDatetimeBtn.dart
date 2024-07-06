import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:flutter/material.dart';

import 'cupertinoDateTimePickerWidget.dart';

class CupertinoDateTimeBtn extends StatelessWidget {
  String code = """
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertinodatetimepickerwidget extends StatefulWidget {

  Cupertinodatetimepickerwidget({super.key});

  @override
  State<Cupertinodatetimepickerwidget> createState() => _CupertinodatetimepickerwidgetState();
}

class _CupertinodatetimepickerwidgetState extends State<Cupertinodatetimepickerwidget> {
  DateTime dateTime = DateTime(3000,2,1,10,20);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.blue.withOpacity(0.3),
        child: Center(
          child: CupertinoButton(
            child: Text("\${dateTime.month} - \${dateTime.day} - \${dateTime.year}",style: TextStyle(color: Colors.white),),
            onPressed: (){
showCupertinoModalPopup(
    context: context,
    builder: (context) {
     return SizedBox(
        height: 250,
       child: CupertinoDatePicker(
         backgroundColor: Colors.white,
         initialDateTime: dateTime,
         onDateTimeChanged: (DateTime newTime){
           setState(() {
             dateTime = newTime;
           });
         },
       ),
      );
    },
);
            },
          ),
        )
    );
  }
}

  """;
  CupertinoDateTimeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cupertinodatetimepickerwidget(),));
            }, child: Text('Widget show')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodeShow(code: code, name: 'Cupertino Date Time Picker',),));
            }, child: Text('Code show')),
          ],
        ),
      ),
    );
  }
}
