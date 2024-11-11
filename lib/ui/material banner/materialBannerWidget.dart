import 'package:flutter/material.dart';

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
