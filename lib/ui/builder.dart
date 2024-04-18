import 'package:flutter/material.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidget(),
    );
  }
}
// MyWidget()=>Text('Text with Theme',style: Theme.of(context).textTheme.displayLarge,); // this is context error


MyWidget()=>Builder(  // using builder to solve context error
    builder: (BuildContext context) {
      return Text('Text with Theme',style: Theme.of(context).textTheme.displayLarge,);
    });


