import 'package:every_flutter_widget/ui/Animated%20Cross%20Fade/widget.dart';
import 'package:every_flutter_widget/ui/AnimatedDefaultTextStyle/widget.dart';
import 'package:every_flutter_widget/ui/Aspect%20Ratio/widget.dart';
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

class AspectRationBtn extends StatelessWidget {
  final String text = '''import 'package:flutter/material.dart';

class AspectRationWidget extends StatefulWidget {
  const AspectRationWidget({super.key});

  @override
  State<AspectRationWidget> createState() => _AspectRationWidgetState();
}

class _AspectRationWidgetState extends State<AspectRationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            width: double.infinity,
             height: 150,
           // height: 300,
            child: AspectRatio(
              // such as 16:9, where the first number represents the width and the second represents the height
                aspectRatio: 16/9,  // TV and monitor Aspect ration
              child: Container(
color: Colors.blueGrey,
              ),
            ),
          )),
    );
  }
}
 ''';
  const AspectRationBtn({super.key});

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
                        builder: (context) => AspectRationWidget(),
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
                            CodeShow(code: text, name: 'Aspect Ration'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
