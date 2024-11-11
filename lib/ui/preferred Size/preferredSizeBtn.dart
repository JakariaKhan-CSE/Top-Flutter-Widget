import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferred_size_widget.dart';
import 'package:flutter/material.dart';

class PreferredSizedBtn extends StatelessWidget {
  final String text = '''import 'package:flutter/material.dart';

class PreferredSizeWidgetTest extends StatelessWidget {
  const PreferredSizeWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: PreferredSize(
  preferredSize: const Size.fromHeight(80),
  child: Container(
    height: 120,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.redAccent,
          Colors.orangeAccent
        ]
      )
    ),
    child: SafeArea(
      child: Center(
        child: ListTile(
title:const Text('Jakaria Khan'),
          trailing: IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,size: 20,color: Colors.white,),
          ),
        ),
      ),
    ),
  ),
),
    );
  }
}
 ''';
  const PreferredSizedBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PreferredSizeWidgetTest(),
                      ));
                },
                child: Text('Widget Show')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CodeShow(code: text, name: 'Preferred Size'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
