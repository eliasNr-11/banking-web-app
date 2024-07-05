import 'package:banking_web_app/utils/constants.dart';
import 'package:banking_web_app/views/widgets/main_button.dart';
import 'package:flutter/material.dart';

class RealEstateLoan extends StatelessWidget {
  const RealEstateLoan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingLarge,
          vertical: AppConstants.paddingMedium),
      margin: const EdgeInsets.symmetric(vertical: AppConstants.paddingMedium),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Real estate loan',
            style: TextStyle(
              fontSize: AppConstants.bodyFontSmall,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall / 2),
          const Text(
            '\$-113,920.00',
            style: TextStyle(
              fontSize: AppConstants.fontSizeLarge,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall / 2),
          const Text(
            '20 payments left',
            style: TextStyle(
              fontSize: AppConstants.bodyFontSmall,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppConstants.primaryColor,
                    ),
                    child: const Text(
                      '6',
                      style: TextStyle(
                          fontSize: AppConstants.bodyFontSmall,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(width: AppConstants.paddingSmall),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '28 January',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '\$1,200.00',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 4, horizontal: AppConstants.paddingSmall),
                decoration: BoxDecoration(
                  color: AppConstants.secondaryColor,
                  borderRadius:
                      BorderRadius.circular(AppConstants.borderRadius),
                ),
                child: const Text(
                  'Pay now',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppConstants.accentColor,
                ),
                child: const Text(
                  '7',
                  style: TextStyle(
                      fontSize: AppConstants.bodyFontSmall,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(width: AppConstants.paddingSmall),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '28 January',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '\$1,200.00',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          MainButton(
              whenPressed: () {},
              name: 'See more',
              primay: AppConstants.primaryColor,
              secondary: AppConstants.secondaryColor)
        ],
      ),
    );
  }
}
