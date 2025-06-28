import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/views/widgets/income_item_details.dart';

class IncomeChartDetail extends StatelessWidget {
  const IncomeChartDetail({super.key});
  static List<IncomeItemModel> items = [
    IncomeItemModel(
        color: const Color(0xFF208BC7), title: 'Design service', value: '%40'),
    IncomeItemModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    IncomeItemModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    IncomeItemModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,   
      children: items
          .map(
            (e) => IncomeItemDetails(
              model: e,
            ),
          )
          .toList(),
    );
  }
}
