import 'package:banking_web_app/utils/constants.dart';
import 'package:flutter/material.dart';

class Deposit extends StatelessWidget {
  const Deposit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingLarge,
          vertical: AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(child: Text('Deposit for 8 month', style: TextStyle(fontSize: AppConstants.bodyFontSmall, fontWeight: FontWeight.w600,),)),
              Padding(
                padding: EdgeInsets.only(left: AppConstants.paddingSmall),
                child: Text('Jul 15, 2024', style: TextStyle(fontSize: AppConstants.bodyFontSmall-2, fontWeight: FontWeight.w300,),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$1,318.62', style: TextStyle(fontSize: AppConstants.fontSizeLarge, fontWeight: FontWeight.bold,),),
              Text('9%', style: TextStyle(fontSize: AppConstants.fontSizeLarge, fontWeight: FontWeight.bold,),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$1437.30', style: TextStyle(fontSize: AppConstants.bodyFontSmall-2),),
              Text('Aug 15, 29 days later', style: TextStyle(fontSize: AppConstants.bodyFontSmall-2, fontWeight: FontWeight.w300,),),
            ],
          ),
        ],
      ),
    );
  }
}
