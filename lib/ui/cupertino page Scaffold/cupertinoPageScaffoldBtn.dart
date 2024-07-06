import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/cupertino%20page%20Scaffold/cupertino_page_scaffold_widget.dart';
import 'package:every_flutter_widget/ui/cupertino%20page%20route/cupertino_page_route_widget.dart';
import 'package:flutter/material.dart';


class CupertinoPageScaffoldBtn extends StatelessWidget {
  String code = '''import 'package:flutter/cupertino.dart';

class CupertinoPageScaffoldWidget extends StatelessWidget {
  const CupertinoPageScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 18, 32, 47),
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey.withOpacity(0.6),
          middle: const Text('Jakaria Khan'), // this is appbar
        ),
        child: Stack(
          children: [
            Image.network('https://wallpapers.com/images/hd/butterfly-and-stones-beautiful-phone-71vgkye1kak00z0w.jpg',fit: BoxFit.cover,height: double.infinity,)
          ],
        )
    );
  }
}
''';
  CupertinoPageScaffoldBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPageScaffoldWidget(),));
            }, child: Text('Widget show')),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodeShow(code: code, name: 'Cupertino Page Scaffold',),));
            }, child: Text('Code show')),
          ],
        ),
      ),
    );
  }
}
