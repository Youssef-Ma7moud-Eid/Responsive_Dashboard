import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_chart_detail.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: IncomeChart()),
        Expanded(
          child: IncomeChartDetail(),
        ),
      ],
    );
  }
}

