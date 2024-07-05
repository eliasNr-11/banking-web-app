import 'package:banking_web_app/utils/constants.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key, required this.whenPressed, required this.name, required this.primay, required this.secondary,
  });

  final VoidCallback whenPressed;
  final String name;
  final Color primay;
  final Color secondary;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: whenPressed,
      style: FilledButton.styleFrom(
        backgroundColor: primay,
        foregroundColor: secondary,
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingExtraLarge, vertical: 18),
        minimumSize: Size.zero
      ),
      child: Text(name),
    );
  }
}