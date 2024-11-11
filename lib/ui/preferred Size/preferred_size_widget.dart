import 'package:flutter/material.dart';

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
          leading: IconButton(
            onPressed: (){
Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,size: 20,),
          ),
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
