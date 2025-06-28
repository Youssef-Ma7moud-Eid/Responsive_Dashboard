import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.model});
  final IncomeItemModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: model.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        model.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing:   Text(
        model.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
