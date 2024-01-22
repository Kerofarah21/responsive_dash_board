import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? 'Design service' : '40%',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          value: 40,
          titleStyle: AppStyles.styleMedium16.copyWith(
            color: activeIndex == 0 ? const Color(0xFF208CC8) : Colors.white,
          ),
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          title: activeIndex == 1 ? 'Design product' : '25%',
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          value: 25,
          titleStyle: AppStyles.styleMedium16.copyWith(
            color: activeIndex == 1 ? const Color(0xFF208CC8) : Colors.white,
          ),
          radius: activeIndex == 1 ? 60 : 50,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
          value: 20,
          titleStyle: AppStyles.styleMedium16.copyWith(
            color: activeIndex == 2 ? const Color(0xFF208CC8) : Colors.white,
          ),
          radius: activeIndex == 2 ? 60 : 50,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          title: activeIndex == 3 ? 'Other' : '15%',
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          value: 15,
          titleStyle: AppStyles.styleMedium16.copyWith(
            color: activeIndex == 3 ? const Color(0xFF208CC8) : Colors.white,
          ),
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
