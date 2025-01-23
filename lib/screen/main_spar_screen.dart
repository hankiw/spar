import 'package:flutter/material.dart';

class MainSparScreen extends StatefulWidget {
  const MainSparScreen({super.key});

  @override
  State<MainSparScreen> createState() => _MainSparScreenState();
}

class _MainSparScreenState extends State<MainSparScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('aaaaa'),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => FeedItem(),
            ),
          ),
        )
      ],
    );
  }

  Widget FeedItem() {
    return Container(
      height: 136.0,
      margin: EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Row(
          
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('111'),
                  Text('222222'),
                  Text('333333'),
                  Text('444444'),
                ],
              ),
            ), 
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}