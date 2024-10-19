import 'package:flutter/material.dart';

class HorizontalItemList extends StatefulWidget {
  const HorizontalItemList({Key? key}) : super(key: key);

  @override
  _HorizontalItemListState createState() => _HorizontalItemListState();
}

class _HorizontalItemListState extends State<HorizontalItemList> {
  final List<String> items = []; // List to hold the items

  void addItem(String item) {
    setState(() {
      items.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView(
          scrollDirection: Axis.horizontal,
          children: items.map((item) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              width: 100,
              margin: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  item,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          }).toList(),
        ),
        ElevatedButton(
          onPressed: () => addItem('Item ${items.length + 1}'), // Adds new item
          child: const Text('Add Item'),
        ),
      ],
    );
  }
}
