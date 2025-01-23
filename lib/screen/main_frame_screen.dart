import 'package:flutter/material.dart';
import 'package:spar/screen/main_spar_screen.dart';

class MainFrameScreen extends StatefulWidget {
  const MainFrameScreen({super.key});

  @override
  State<MainFrameScreen> createState() => _MainFrameScreenState();
}

class _MainFrameScreenState extends State<MainFrameScreen> {
  int _naviIndex = 0;
  List<Widget> _naviPages = [
    Container(child: Text('page1')),
    MainSparScreen(),
    Container(child: Text('page3')),
    Container(child: Text('page4')),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
					index: _naviIndex,
					children: _naviPages,
				)
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _naviIndex,
        onTap: _naviTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop_square),
            label: 'SPAR'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_rounded),
            label: 'Commu'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'SETTING'
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(2, 2, 2, 1),
        unselectedItemColor: Colors.black38,
        backgroundColor: const Color.fromARGB(255, 249, 249, 251),
        selectedLabelStyle: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
      )
    );
  }

  void _naviTap(idx) {
    setState(() {
      _naviIndex = idx;
    });
  }
}