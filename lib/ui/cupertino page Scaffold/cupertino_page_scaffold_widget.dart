import 'package:flutter/cupertino.dart';

class CupertinoPageScaffoldWidget extends StatelessWidget {
  const CupertinoPageScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 18, 32, 47),
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey.withOpacity(0.6),
          middle: const Text('Jakaria Khan'), // this is appbar
        ),
        child: Stack(
          children: [
            Image.network('https://wallpapers.com/images/hd/butterfly-and-stones-beautiful-phone-71vgkye1kak00z0w.jpg',fit: BoxFit.cover,height: double.infinity,)
          ],
        )
    );
  }
}
