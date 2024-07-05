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
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingLarge,
          vertical: AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
    );
  }
}