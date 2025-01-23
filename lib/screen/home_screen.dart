import 'package:flutter/material.dart';
import 'package:spar/component/home_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _naviIndex = 0;
  String _homeCategorySelected = 'ALL';
  String screenTitle = 'test';

  List<Map<String, dynamic>> categoryList = [
    {'label': 'ALL', 'color': Colors.black},
    {'label': 'AAAA', 'color': Colors.black12},
    {'label': 'BBBB', 'color': Colors.black26},
    {'label': 'CCCC', 'color': Colors.black38},
    {'label': 'DDDDDD', 'color': Colors.black45},
    {'label': 'BBBB', 'color': Colors.black26},
    {'label': 'CCCC', 'color': Colors.black38},
    {'label': 'DDDDDD', 'color': Colors.black45},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenTitle),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120.0,
              decoration: const BoxDecoration(
                color: Colors.black26,
              ),
              child: Placeholder(),
            ),
            HomeCategory(itemList: categoryList),
            Text('tab select : ${_homeCategorySelected}'),
          ],
        ),
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
            icon: Icon(Icons.list),
            label: 'board'
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