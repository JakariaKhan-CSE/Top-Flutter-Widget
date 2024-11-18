import 'package:every_flutter_widget/ui/Animated%20Cross%20Fade/widget.dart';
import 'package:every_flutter_widget/ui/Drag%20Target/widget.dart';
import 'package:every_flutter_widget/ui/Draggable%20Scrollable%20Sheet/widget.dart';
import 'package:every_flutter_widget/ui/Long%20Press%20Draggable/long_press_draggable_widget.dart';
import 'package:every_flutter_widget/ui/Pop%20Up%20Menu/widget.dart';
import 'package:every_flutter_widget/ui/Reorderable%20List%20View/widget.dart';
import 'package:every_flutter_widget/ui/alert%20dialog/widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/interactive%20viewer/interactiveViewerWidget.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferred_size_widget.dart';
import 'package:every_flutter_widget/ui/table/widget.dart';
import 'package:flutter/material.dart';

class PopUpMenuBtn extends StatelessWidget {
  final String text = '''import 'package:flutter/material.dart';

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
 ''';
  const PopUpMenuBtn({super.key});

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
                        builder: (context) => PopUpMenuWidget(),
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
                            CodeShow(code: text, name: 'Pop Up Menu'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
