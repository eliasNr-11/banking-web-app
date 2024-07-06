import 'package:banking_web_app/utils/constants.dart';
import 'package:banking_web_app/views/widgets/main_button.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingLarge,
          vertical: AppConstants.paddingMedium),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/main-card.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Expanded(
                  flex: 4,
                  child: Text(
                    'Debit card under new terms and conditions',
                    style: TextStyle(
                        fontSize: AppConstants.fontSizeLarge,
                        fontWeight: FontWeight.w500,
                        color: Colors.white, overflow: TextOverflow.ellipsis),
                        maxLines: 2,
                  )),
              Expanded(flex: 2, child: SizedBox()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    infoCards('assets/images/rotate.png', 'Fast calculation'),
                    const SizedBox(height: AppConstants.paddingSmall),
                    infoCards('assets/images/credit.png', 'Payments in 1 day'),
                    const SizedBox(height: AppConstants.paddingSmall),
                    infoCards('assets/images/24-7.png', '24-hour support'),
                  ],
                ),
              ),
              const Expanded(flex: 2, child: SizedBox()),
              Expanded(
                flex: 3,
                child: MainButton(
                    whenPressed: () {},
                    name: 'See more',
                    primay: AppConstants.secondaryColor,
                    secondary: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container infoCards(String img, String name) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: AppConstants.paddingSmall, horizontal: AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: const Color(0xFF424242),
        borderRadius: BorderRadius.circular(AppConstants.borderRadius/2),
      ),
      child: Row(
        children: [
          Image.asset(
            img,
            height: 10,
            width: 10,
            color: Colors.white,
          ),
          const SizedBox(width: AppConstants.paddingSmall / 2),
          Flexible(
            child: Text(
              name,
              style: const TextStyle(
                  fontSize: 10, color: Colors.white, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
    );
  }
}
