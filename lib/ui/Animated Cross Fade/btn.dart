import 'package:every_flutter_widget/ui/Animated%20Cross%20Fade/widget.dart';
import 'package:every_flutter_widget/ui/Drag%20Target/widget.dart';
import 'package:every_flutter_widget/ui/Draggable%20Scrollable%20Sheet/widget.dart';
import 'package:every_flutter_widget/ui/Long%20Press%20Draggable/long_press_draggable_widget.dart';
import 'package:every_flutter_widget/ui/Reorderable%20List%20View/widget.dart';
import 'package:every_flutter_widget/ui/alert%20dialog/widget.dart';
import 'package:every_flutter_widget/ui/common/codeshow.dart';
import 'package:every_flutter_widget/ui/interactive%20viewer/interactiveViewerWidget.dart';
import 'package:every_flutter_widget/ui/preferred%20Size/preferred_size_widget.dart';
import 'package:every_flutter_widget/ui/table/widget.dart';
import 'package:flutter/material.dart';

class AnimatedCrossFadeBtn extends StatelessWidget {
  final String text = '''
  import 'package:flutter/material.dart';

class animatedCrossFadeWidget extends StatefulWidget {
  const animatedCrossFadeWidget({super.key});

  @override
  State<animatedCrossFadeWidget> createState() => _animatedCrossFadeWidgetState();
}

class _animatedCrossFadeWidgetState extends State<animatedCrossFadeWidget> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(height: 100,
    width: double.infinity,
    child: TextButton(onPressed: (){
      setState(() {
        _bool = !_bool;
      });
    }, child: Text('Switch',style: TextStyle(
      color: Colors.black
    ),)),),
    AnimatedCrossFade(
        firstChild: Image.asset('images/rose.jpg', width: double.infinity,),
        secondChild: Image.asset('images/sunset.webp', width: double.infinity,),
        crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: Duration(seconds: 1))
  ],
),
    );
  }
}
 ''';
  const AnimatedCrossFadeBtn({super.key});

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
                        builder: (context) => animatedCrossFadeWidget(),
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
                            CodeShow(code: text, name: 'Animated Cross Fade'),
                      ));
                },
                child: Text('Code Show')),
          ],
        ),
      ),
    );
  }
}
