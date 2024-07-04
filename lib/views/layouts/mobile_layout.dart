import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
            child: Center(
                child:
                    Text('First Row', style: TextStyle(color: Colors.white))),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.green,
            child: Center(
                child:
                    Text('Middle Row', style: TextStyle(color: Colors.white))),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.blue,
            child: Center(
                child: Text('Last Row', style: TextStyle(color: Colors.white))),
          ),
        ),
      ],
    );
  }
}