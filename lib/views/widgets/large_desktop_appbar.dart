import 'package:banking_web_app/utils/constants.dart';
import 'package:flutter/material.dart';

class LargeDesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LargeDesktopAppBar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        width: 1440,
        height: kToolbarHeight,
        child: SizedBox(
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
    );
  }

  @override
  Size get preferredSize => const Size(1440, kToolbarHeight);
}