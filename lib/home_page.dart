import 'package:every_flutter_widget/ui/builder.dart';
import 'package:every_flutter_widget/ui/chip.dart';
import 'package:every_flutter_widget/ui/closeButton.dart';
import 'package:every_flutter_widget/ui/constrainedBox.dart';
import 'package:every_flutter_widget/ui/cupertinoAction.dart';
import 'package:every_flutter_widget/ui/cupertinoButton/cupertinobtn.dart';
import 'package:every_flutter_widget/ui/cupertinoDialog/cupertinoDialog.dart';
import 'package:every_flutter_widget/ui/cupertinoactivityindicator/cupertinoactivityindicatorpage.dart';
import 'package:every_flutter_widget/ui/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Every Flutter Widget'),centerTitle: true,elevation: 3,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            children: [
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ModalBottomSheetWidget(),));
              }, child: Text('Modal Bottom sheet')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BuilderWidget(),));
              }, child: Text('Builder')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChipWidget(),));
              }, child: Text('Chip')),

              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CloseButtonWidget(),));
              }, child: Text('Close Button')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConstrainedBoxWidget(),));
              }, child: Text('Constrained Box')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoActionWidget(),));
              }, child: Text('CupertinoActionSheet')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoActivityIndicator(),));
              }, child: Text('Cupertino Activity Indicator')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoAlertDialog(),));
              }, child: Text('Cupertino Alert Dialog')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoButtonPage(),));
              }, child: Text('Cupertino Button')),
            ],
          ),
        ),
      )
    );
  }
}
