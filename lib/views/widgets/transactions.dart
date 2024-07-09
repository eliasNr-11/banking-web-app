import 'package:banking_web_app/utils/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChipDetail {
  final String text;
  final Color color;

  ChipDetail({required this.text, required this.color});
}

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChipDetail> chipDetails = [
      ChipDetail(text: 'Credits', color: Colors.amber),
      ChipDetail(text: 'Transfers', color: Colors.orange),
      ChipDetail(text: 'Markets', color: Colors.red),
      ChipDetail(text: 'Restaurants', color: Colors.purple),
      ChipDetail(text: 'Clothes', color: Colors.blue),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingLarge,
          vertical: AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Transactions in January',
                      style: TextStyle(
                          fontSize: AppConstants.bodyFontSmall,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: AppConstants.paddingSmall),
                    Row(
                      children: [
                        customChips(AppConstants.secondaryColor, Colors.white,
                            'Spending', false),
                        const SizedBox(width: AppConstants.paddingSmall),
                        customChips(AppConstants.accentColor, Colors.black,
                            'Deposits', false),
                      ],
                    )
                  ],
                ),
                Wrap(
                    spacing: AppConstants.paddingSmall,
                    runSpacing: AppConstants.paddingSmall,
                    children: [
                      for (var item in chipDetails) ...[
                        customChips(item.color, Colors.black, item.text, true)
                      ],
                    ])
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 40,
              width: 40,
              child: Stack(
                children: [
                  PieChart(
                    PieChartData(
                      sectionsSpace: 0,
                      sections: [
                        PieChartSectionData(
                          color: const Color(0xFFF87B7B),
                          showTitle: false,
                          value: 23,
                          radius: 20,
                          titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: const Color(0xFFFCAA6F),
                          showTitle: false,
                          value: 20,
                          radius: 20,
                          titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: const Color(0xFFF6D35B),
                          showTitle: false,
                          value: 32,
                          radius: 20,
                          titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: const Color(0xFF7BADF8),
                          showTitle: false,
                          value: 12,
                          radius: 20,
                          titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        PieChartSectionData(
                          color: const Color(0xFFA37BF7),
                          showTitle: false,
                          value: 13,
                          radius: 20,
                          titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                      centerSpaceRadius: 45, // This creates the donut effect
                    ),
                  ),
                  const Center(
                    child: Text('\$2,300.42', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container customChips(
      Color backgroundColor, Color foreGroundColor, String text, bool icn) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingSmall,
          vertical: AppConstants.paddingSmall / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: icn ? backgroundColor.withOpacity(0.2) : backgroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icn == true) ...[
            Padding(
              padding:
                  const EdgeInsets.only(right: AppConstants.paddingSmall / 2),
              child: Icon(
                Icons.circle,
                size: 8,
                color: backgroundColor,
              ),
            ),
          ],
          Text(
            text,
            style: TextStyle(
                fontSize: 11,
                color: foreGroundColor,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
