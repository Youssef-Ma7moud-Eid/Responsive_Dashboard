import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
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
          titlePositionPercentageOffset: activeindex == 0 ? 1.5 :null ,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeindex == 0 ? null : Colors.white,
          ),
          title: activeindex == 0 ? 'Design service' : '40%',
          value: 40,
          color: Color(0XFF208BC7),
          radius: activeindex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeindex == 1 ? 2.2 :null ,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeindex == 1 ? null : Colors.white,
          ),
          value: 25,
          title: activeindex == 1 ? 'Design product' : '25%',
          color: Color(0XFF4DB7F2),
          radius: activeindex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeindex == 2 ? 1.5 :null ,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeindex == 2 ? null : Colors.white,
          ),
          value: 20,
          title: activeindex == 2 ? 'Product royalti' : '%20',
          color: Color(0XFF064060),
          radius: activeindex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeindex == 3 ? 1.5 :null ,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeindex == 3 ? null : Colors.white,
          ),
          value: 22,
          title: activeindex == 3 ? 'Other' : '%22',
          color: Color(0XFFE2DECD),
          radius: activeindex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
