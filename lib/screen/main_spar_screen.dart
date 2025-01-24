import 'package:flutter/material.dart';

class MainSparScreen extends StatefulWidget {
  const MainSparScreen({super.key});

  @override
  State<MainSparScreen> createState() => _MainSparScreenState();
}

class _MainSparScreenState extends State<MainSparScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
			color: Colors.black12,
			child: Column(
				children: [
					Container(
						child: Text('aaaaa'),
					),
					Expanded(
						child: Padding(
							padding: const EdgeInsets.symmetric(horizontal: 8.0),
							child: ListView.builder(
								itemCount: 10,
								itemBuilder: (context, index) => FeedItem(),
							),
						),
					)
				],
			),
		);
  }

  Widget FeedItem() {
    return Container(
      height: 110.0,
      margin: EdgeInsets.only(bottom: 4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
				borderRadius: BorderRadius.circular(8.0),
				color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('aaaaa'),
                  Text('222222'),
                  Text('333333'),
                  Text('444444'),
                ],
              ),
            ), 
            Container(
              width: 100.0,
							height: 100.0,
              // child: Image.network('https://via.placeholder.com/300', fit: BoxFit.cover),
            )
          ],
        ),
      ),
    );
  }
}