import 'package:banking_web_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppConstants.borderRadius)
      ),
    );
  }
}