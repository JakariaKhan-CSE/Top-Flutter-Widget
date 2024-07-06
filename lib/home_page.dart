import 'package:every_flutter_widget/ui/Cupertino%20Picker/cupertinopickerbtn.dart';
import 'package:every_flutter_widget/ui/builder.dart';
import 'package:every_flutter_widget/ui/chip.dart';
import 'package:every_flutter_widget/ui/closeButton.dart';
import 'package:every_flutter_widget/ui/constrainedBox.dart';
import 'package:every_flutter_widget/ui/cupertino%20Context%20Menu/cupertinoconextButton.dart';
import 'package:every_flutter_widget/ui/cupertino%20page%20Scaffold/cupertinoPageScaffoldBtn.dart';
import 'package:every_flutter_widget/ui/cupertino%20page%20route/cupertino_page_route_btn.dart';
import 'package:every_flutter_widget/ui/cupertino%20popup%20surface/cupertinopopupsurfacebtn.dart';
import 'package:every_flutter_widget/ui/cupertinoAction.dart';
import 'package:every_flutter_widget/ui/cupertinoButton/cupertinobtn.dart';
import 'package:every_flutter_widget/ui/cupertinoDateTime/cupertinoDatetimeBtn.dart';
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
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ModalBottomSheetWidget(),));
              }, child: Text('1. Modal Bottom sheet')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BuilderWidget(),));
              }, child: Text('2. Builder')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChipWidget(),));
              }, child: Text('3. Chip')),

              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CloseButtonWidget(),));
              }, child: Text('4. Close Button')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConstrainedBoxWidget(),));
              }, child: Text('5. Constrained Box')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoActionWidget(),));
              }, child: Text('6. CupertinoActionSheet')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoActivityIndicator(),));
              }, child: Text('7. Cupertino Activity Indicator')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoAlertDialog(),));
              }, child: Text('8. Cupertino Alert Dialog')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoButtonPage(),));
              }, child: Text('9. Cupertino Button')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoContextMenuButtonPage(),));
              }, child: Text('10. Cupertino Context Menu')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoDateTimeBtn(),));
              }, child: Text('11. Cupertino Date Time Picker')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPageRouteBtn(),));
              }, child: Text('12. Cupertino Page Route')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPageScaffoldBtn(),));
              }, child: Text('13. Cupertino Page Scaffold')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPickerBtn(),));
              }, child: Text('14. Cupertino Picker')),
              ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPopUpsurfaceBtn(),));
              }, child: Text('15. Cupertino Popup Surface')),
            ],
          ),
        ),
      )
    );
  }
}
