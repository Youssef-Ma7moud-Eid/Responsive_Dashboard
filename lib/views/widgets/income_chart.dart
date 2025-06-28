import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeindex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouch) {
          activeindex != pietouch?.touchedSection?.touchedSectionIndex
              ? setState(() {
                  activeindex =
                      pietouch?.touchedSection?.touchedSectionIndex ?? -1;
                })
              : null;
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          color: Color(0XFF208BC7),
          radius: activeindex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          color: Color(0XFF4DB7F2),
          radius: activeindex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          color: Color(0XFF064060),
          radius: activeindex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          color: Color(0XFFE2DECD),
          radius: activeindex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
