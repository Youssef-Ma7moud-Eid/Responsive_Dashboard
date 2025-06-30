import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_chart_detail.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1380
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(
                flex: 2,
                child: IncomeChartDetail(),
              ),
            ],
          )
        : Expanded(
            child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: DetailedIncomeChart(),
          ));
  }
}
