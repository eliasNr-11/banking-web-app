import 'package:banking_web_app/utils/constants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingLarge,
          vertical: AppConstants.paddingMedium),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Current balances',
                style: TextStyle(
                    fontSize: AppConstants.bodyFontSmall,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 4, horizontal: AppConstants.paddingSmall),
                decoration: BoxDecoration(
                  color: AppConstants.secondaryColor,
                  borderRadius:
                      BorderRadius.circular(AppConstants.borderRadius),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/vip.png',
                      height: AppConstants.bodyFontSmall,
                      width: AppConstants.bodyFontSmall,
                      color: Colors.white,
                    ),
                    const SizedBox(width: AppConstants.paddingSmall / 2),
                    const Text(
                      '\$125',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppConstants.paddingSmall / 2),
          const Text(
            '\$15,092.45',
            style: TextStyle(
              fontSize: AppConstants.fontSizeLarge,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(AppConstants.paddingSmall),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.circular(AppConstants.borderRadius / 2)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Image.asset(
                            'assets/images/card.png',
                            height: AppConstants.titleFontMedium,
                            width: AppConstants.titleFontMedium,
                          ),
                        ],
                      ),
                      const Text(
                        '0723',
                        style: TextStyle(
                            fontSize: AppConstants.titleFontMedium,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: AppConstants.paddingSmall),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(AppConstants.paddingSmall),
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppConstants.borderRadius / 2),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/visa-bkg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Image.asset(
                            'assets/images/visa.png',
                            height: AppConstants.titleFontMedium,
                            width: AppConstants.titleFontMedium,
                          ),
                        ],
                      ),
                      const Text(
                        '8514',
                        style: TextStyle(
                          fontSize: AppConstants.titleFontMedium,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: AppConstants.paddingSmall),
              Expanded(
                child: DottedBorder(
                  radius: const Radius.circular(AppConstants.borderRadius / 2),
                  strokeWidth: 1,
                  color: AppConstants.secondaryColor,
                  borderType: BorderType.RRect,
                  dashPattern: const [5, 5],
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppConstants.borderRadius / 2),
                    ),
                    child: const Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: AppConstants.fontSizeLarge,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
