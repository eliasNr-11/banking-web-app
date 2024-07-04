import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
            child: Center(
                child: Text('First Column',
                    style: TextStyle(color: Colors.white))),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.green,
            child: Center(
                child: Text('Middle Column',
                    style: TextStyle(color: Colors.white))),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.blue,
            child: Center(
                child:
                    Text('Last Column', style: TextStyle(color: Colors.white))),
          ),
        ),
      ],
    );
  }
}