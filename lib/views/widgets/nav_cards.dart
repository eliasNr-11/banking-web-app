import 'package:banking_web_app/utils/constants.dart';
import 'package:flutter/material.dart';

class NavCards extends StatelessWidget {
  const NavCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppConstants.paddingMedium),
      child: Row(
        children: [
          Expanded(
            child: NavCard(),
          ),
          SizedBox(width: AppConstants.paddingMedium),
          Expanded(
            child: NavCard(),
          ),
          SizedBox(width: AppConstants.paddingMedium),
          Expanded(
            child: NavCard(),
          ),
        ],
      ),
    );
  }
}

class NavCard extends StatelessWidget {
  const NavCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.paddingLarge,
                vertical: AppConstants.paddingMedium),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppConstants.borderRadius),
            ),
          ),
          Positioned(
            right: -25,
            top: -40,
            child: Image.asset(
              "assets/images/document.png",
              color: AppConstants.accentColor,
              height: 100,
              width: 100,
            ),
          ),
          Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(AppConstants.paddingMedium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    padding: const EdgeInsets.all(AppConstants.paddingSmall),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFE8E8E8),
                    ),
                    child: Image.asset(
                      'assets/images/document.png',
                      height: AppConstants.bodyFontLarge,
                      width: AppConstants.bodyFontLarge,
                    ),
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'By details',
                          style: TextStyle(fontSize: AppConstants.bodyFontSmall),
                        ),
                        const SizedBox(width: AppConstants.paddingSmall / 2),
                        Image.asset(
                          'assets/images/arrow.png',
                          height: AppConstants.bodyFontSmall,
                          width: AppConstants.bodyFontSmall,
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
