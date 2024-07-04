import 'package:banking_web_app/views/layouts/desktop_layout.dart';
import 'package:banking_web_app/views/layouts/mobile_layout.dart';
import 'package:banking_web_app/views/layouts/tablet_layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 1440) {
      return VeryLargeDesktopLayout(tabController: _tabController);
    } else if (screenWidth > 1200) {
      return RegularDesktopLayout(tabController: _tabController);
    } else if (screenWidth > 992) {
      return SmallDesktopLayout(tabController: _tabController);
    } else if (screenWidth > 768) {
      return TabletLayout(tabController: _tabController);
    } else {
      return MobileLayout(tabController: _tabController);
    }
  }
}
