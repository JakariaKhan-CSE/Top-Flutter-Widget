import 'package:flutter/material.dart';
class BottomNavigationBarWidTest extends StatefulWidget {
  const BottomNavigationBarWidTest({super.key});

  @override
  State<BottomNavigationBarWidTest> createState() => _BottomNavigationBarWidTestState();
}

class _BottomNavigationBarWidTestState extends State<BottomNavigationBarWidTest> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: const[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu),
          label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: 'Person')
        ],
      ),
    );
  }
}
