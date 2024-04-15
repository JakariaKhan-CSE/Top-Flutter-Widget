import 'package:every_flutter_widget/aspect_ratio.dart';
import 'package:every_flutter_widget/auto_complete.dart';
import 'package:every_flutter_widget/backdrop_filter.dart';
import 'package:every_flutter_widget/banner.dart';
import 'package:every_flutter_widget/base_line.dart';
import 'package:every_flutter_widget/block_semantics.dart';
import 'package:every_flutter_widget/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'animated_switcher.dart';
void main() {
  runApp(const MaterialApp(

    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Every flutter widget'),centerTitle: true,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add))
        ],
        leading: Icon(Icons.menu),
 // app bar height set kora jai
      ),
      body:  BottomNavigationBarWidTest(),
    );
  }
}









