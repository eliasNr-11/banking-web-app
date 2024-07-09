import 'package:banking_web_app/utils/constants.dart';
import 'package:flutter/material.dart';

class NavCards extends StatelessWidget {
  const NavCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: AppConstants.paddingMedium),
      child: Row(
        children: [
          Expanded(
            child: NavCard(
              icn: 'assets/images/document.png',
              name: 'By details',
            ),
          ),
          SizedBox(width: AppConstants.paddingMedium),
          Expanded(
            child: NavCard(
              icn: 'assets/images/cvv-card.png',
              name: 'Card number',
            ),
          ),
          SizedBox(width: AppConstants.paddingMedium),
          Expanded(
            child: NavCard(
              icn: 'assets/images/qr.png',
              name: 'QR scanner',
            ),
          ),
        ],
      ),
    );
  }
}

class NavCard extends StatelessWidget {
  const NavCard({
    super.key, required this.icn, required this.name,
  });

  final String icn;
  final String name;

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
            right: -40,
            top: -36,
            child: Image.asset(
              icn,
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
                      icn,
                      height: AppConstants.bodyFontLarge,
                      width: AppConstants.bodyFontLarge,
                    ),
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        // const SizedBox(width: AppConstants.paddingSmall / 2), 
                        Image.asset(
                          'assets/images/arrow.png',
                          height: 12,
                          width: 12,
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
