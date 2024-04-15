import 'package:flutter/material.dart';
class BlockSemanticsWidTest extends StatefulWidget {
  const BlockSemanticsWidTest({super.key});

  @override
  State<BlockSemanticsWidTest> createState() => _BlockSemanticsWidTestState();
}

class _BlockSemanticsWidTestState extends State<BlockSemanticsWidTest> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width: 500,
        height: double.infinity,
        child: Column(
          children: [
OutlinedButton(onPressed: (){
  setState(() {
    isShow = true;
  });
}, child: Text('Click')),

            if(isShow)
              BlockSemantics(
                blocking: isShow,
                child: Card(
                  color: Colors.orangeAccent,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('This is a Card'),
                        TextButton(onPressed: (){
                          setState(() {
                            isShow = false;
                          });

                        }, child: Text('Close'))
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
