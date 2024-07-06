import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/cupertino%20page%20route/cupertino_page_route_widget.dart';
import 'package:flutter/material.dart';


class CupertinoPageRouteBtn extends StatelessWidget {
  String code = ''' 
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageRouteWidget extends StatelessWidget {
  const CupertinoPageRouteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton.filled(
            child: Text('Click for page 2'),
            onPressed: ()=> Navigator.of(context).push(CupertinoPageRoute(builder: (context) => PageTwo(),))
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Page Two'),
      ),
    );
  }
}


  ''';
  CupertinoPageRouteBtn({super.key});

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPageRouteWidget(),));
            }, child: Text('Widget show')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodeShow(code: code, name: 'Cupertino Page Route',),));
            }, child: Text('Code show')),
          ],
        ),
      ),
    );
  }
}
