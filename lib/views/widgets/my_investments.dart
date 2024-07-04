import 'package:banking_web_app/utils/constants.dart';
import 'package:flutter/material.dart';

class MyInvestments extends StatelessWidget {
  const MyInvestments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingLarge,
          vertical: AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'My Investments',
                style: TextStyle(
                    fontSize: AppConstants.bodyFontSmall,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  const Text(
                    'See all',
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
          const SizedBox(
            height: AppConstants.paddingLarge,
          ),
          companies('assets/images/apple.png', 'Apple inc.', 0.33),
          const SizedBox(height: AppConstants.paddingMedium),
          companies('assets/images/netflix.png', 'Netflix', -4.96),
          const SizedBox(height: AppConstants.paddingMedium),
          companies('assets/images/air-bnb.png', 'Airbnb', -0.52),
          const SizedBox(height: AppConstants.paddingMedium),
          companies('assets/images/nvidia.png', 'Nvidia', 24.64),
        ],
      ),
    );
  }

  Row companies(String img, String companyName, double number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE8E8E8),
              ),
              child: Image.asset(
                img,
                height: AppConstants.bodyFontLarge,
                width: AppConstants.bodyFontLarge,
              ),
            ),
            const SizedBox(
              width: AppConstants.paddingSmall,
            ),
            Text(
              companyName,
              style: const TextStyle(
                  fontSize: AppConstants.bodyFontSmall,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        Text(
          '${number > 0 ? '+' : ''}$number%',
          style: TextStyle(
              fontSize: AppConstants.bodyFontSmall,
              fontWeight: FontWeight.w500,
              color: number > 0 ? Colors.green : Colors.red),
        )
      ],
    );
  }
}
