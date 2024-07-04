import 'package:banking_web_app/utils/constants.dart';
import 'package:banking_web_app/views/widgets/large_desktop_appbar.dart';
import 'package:flutter/material.dart';

class VeryLargeDesktopLayout extends StatelessWidget {
  const VeryLargeDesktopLayout({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LargeDesktopAppBar(tabController: tabController,),
      body: const Center(
        child: SizedBox(
          width: 1440,
          child: DesktopLayout(layoutFontSize: 20),
        ),
      ),
    );
  }
}

class RegularDesktopLayout extends StatelessWidget {
  const RegularDesktopLayout({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        elevation: 0.4,
        shadowColor: Colors.black,
        toolbarHeight: 56,
        title: SizedBox(
          height: 56,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: AppConstants.paddingSmall),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 32,
                          width: 32,
                        ),
                        const SizedBox(
                          width: AppConstants.paddingSmall,
                        ),
                        const Text(
                          'LINES BANK',
                          style: TextStyle(
                              fontSize: AppConstants.bodyFontLarge,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TabBar(
                    controller: tabController,
                    indicatorColor: AppConstants.secondaryColor,
                    dividerHeight: 0,
                    labelPadding: EdgeInsets.zero,
                    overlayColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set states) {
                        if (states.contains(WidgetState.pressed)) {
                          return AppConstants.secondaryColor.withOpacity(0.2);
                        }
                        return null; // Use default splash color
                      },
                    ),
                    tabs: const [
                      Tab(text: 'Home'),
                      Tab(text: 'Transactions'),
                      Tab(text: 'Payments'),
                      Tab(text: 'Deposits'),
                      Tab(text: 'Credits'),
                      Tab(text: 'Archive'),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: AppConstants.paddingSmall),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Jon Doe', style: TextStyle(fontSize: AppConstants.bodyFontSmall, fontWeight: FontWeight.w500),),
                        const SizedBox(width: AppConstants.paddingSmall),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/user.jpeg',
                              height: 32,
                              width: 32,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: const DesktopLayout(layoutFontSize: 20),
    );
  }
}

class SmallDesktopLayout extends StatelessWidget {
  const SmallDesktopLayout({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        elevation: 0.4,
        shadowColor: Colors.black,
        toolbarHeight: 48,
        title: SizedBox(
          height: 48,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: AppConstants.paddingSmall),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 32,
                          width: 32,
                        ),
                        const SizedBox(
                          width: AppConstants.paddingSmall,
                        ),
                        const Text(
                          'LINES BANK',
                          style: TextStyle(
                              fontSize: AppConstants.bodyFontSmall,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TabBar(
                    controller: tabController,
                    indicatorColor: AppConstants.secondaryColor,
                    dividerHeight: 0,
                    labelPadding: EdgeInsets.zero,
                    overlayColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set states) {
                        if (states.contains(WidgetState.pressed)) {
                          return AppConstants.secondaryColor.withOpacity(0.2);
                        }
                        return null; // Use default splash color
                      },
                    ),
                    tabs: const [
                      Tab(text: 'Home'),
                      Tab(text: 'Transactions'),
                      Tab(text: 'Payments'),
                      Tab(text: 'Deposits'),
                      Tab(text: 'Credits'),
                      Tab(text: 'Archive'),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: AppConstants.paddingSmall),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Jon Doe', style: TextStyle(fontSize: AppConstants.bodyFontSmall, fontWeight: FontWeight.w500),),
                        const SizedBox(width: AppConstants.paddingSmall),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/user.jpeg',
                              height: 32,
                              width: 32,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: DesktopLayout(layoutFontSize: 18),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, required this.layoutFontSize});

  final double layoutFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            margin: const EdgeInsets.symmetric(
                horizontal: AppConstants.paddingLarge),
            color: Colors.indigo,
            child: Center(
                child: Text('First Column',
                    style: TextStyle(
                        color: Colors.white, fontSize: layoutFontSize))),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.green,
            child: Center(
                child: Text('Middle Column',
                    style: TextStyle(
                        color: Colors.white, fontSize: layoutFontSize))),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            margin: const EdgeInsets.symmetric(
                horizontal: AppConstants.paddingLarge),
            color: Colors.blue,
            child: Center(
                child: Text('Last Column',
                    style: TextStyle(
                        color: Colors.white, fontSize: layoutFontSize))),
          ),
        ),
      ],
    );
  }
}
