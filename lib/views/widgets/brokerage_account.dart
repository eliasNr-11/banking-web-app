import 'package:banking_web_app/utils/constants.dart';
import 'package:banking_web_app/views/widgets/main_button.dart';
import 'package:flutter/material.dart';

class BrokerageAccount extends StatelessWidget {
  const BrokerageAccount({super.key});

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
          const Text(
            'Brokerage account',
            style: TextStyle(
              fontSize: AppConstants.bodyFontSmall,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall / 2),
          const Text(
            '\$0.00',
            style: TextStyle(
              fontSize: AppConstants.fontSizeLarge,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          MainButton(whenPressed: (){}, name: 'Open now', primay: AppConstants.primaryColor, secondary: AppConstants.secondaryColor)
        ],
      ),
    );
  }
}
