import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/material%20banner/materialBannerWidget.dart';
import 'package:flutter/material.dart';

class Materialbannerbtn extends StatelessWidget {
  final String text = ''' import 'package:flutter/material.dart';

class MaterialBannerWidget extends StatefulWidget {
  const MaterialBannerWidget({super.key});

  @override
  State<MaterialBannerWidget> createState() => _MaterialBannerWidgetState();
}

class _MaterialBannerWidgetState extends State<MaterialBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Material Banner'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
ScaffoldMessenger.of(context).showMaterialBanner(
  MaterialBanner(content: Text('Subscribe!'),
      elevation: 5,
      padding: EdgeInsets.all(20),
      leading: Icon(Icons.notifications_active_rounded),
      backgroundColor: Colors.white12,
      actions: [
TextButton(onPressed: (){
  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
}, child: Text('Dismiss'))
      ])
);
          },
          child: Text('Open'),
        ),
      ),
    );
  }
}
''';
  const Materialbannerbtn({super.key});

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
                        builder: (context) => MaterialBannerWidget(),
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
                            CodeShow(code: text, name: 'Material Banner'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
