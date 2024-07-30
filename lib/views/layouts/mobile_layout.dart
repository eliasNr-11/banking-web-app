import 'package:banking_web_app/utils/constants.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        backgroundColor: AppConstants.backgroundColor,
        surfaceTintColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 32,
                    width: 32,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'LINES BANK',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.devices, size: 72,),
            SizedBox(height: 30),
            Text('Mobile View', style: TextStyle(fontSize: 36),),
            Text('Responsive view under development', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
