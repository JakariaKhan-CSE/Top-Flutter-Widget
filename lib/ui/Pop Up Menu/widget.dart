import 'package:flutter/material.dart';

class PopUpMenuWidget extends StatefulWidget {
  const PopUpMenuWidget({super.key});

  @override
  State<PopUpMenuWidget> createState() => _PopUpMenuWidgetState();
}

class _PopUpMenuWidgetState extends State<PopUpMenuWidget> {
  String title = 'First Item';
  String item1 = 'First Item';
  String item2 = 'Second Item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
  child: ListTile(
    title: Text(title),
    trailing: PopupMenuButton(itemBuilder: (context) => [  // be careful [ ] because i return list of popupmenuitem
  PopupMenuItem(child: Text(item1),  // child show this text
  value: item1,), // when click value assign item1
      PopupMenuItem(child: Text(item2),  // child show this text
        value: item2,)
    ],
    onSelected: (value) {
      setState(() {
        title = value;  // update (user click) value ta title a assign hobe
      });
    },),
  ),
),
    );
  }
}
