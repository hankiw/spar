import 'package:flutter/material.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key, required this.itemList});

  final List itemList;

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}


class _HomeCategoryState extends State<HomeCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 6.0),
            child: Text('Select your',
              style: TextStyle(
                fontSize: 18.0,
              )
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                widget.itemList.length,
                (index) => Container(
                  color: widget.itemList[index]['color'],
                  margin: EdgeInsets.only(right: 12.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                    child: Text(widget.itemList[index]['label'], style: TextStyle(color: Colors.white)),
                  ),
                )
              )
            ),
          ),
        ],
      ),
    );
  }
}