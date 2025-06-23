import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.model, required this.isActive});
  final ExpensesItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: isActive == true ? Color(0XFF4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0XFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
              imagebackground:
                  isActive ? Colors.white.withOpacity(0.10000000000) : null,
              imagecolor: isActive ? Colors.white : null,
              model: model),
          SizedBox(
            height: 15,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              model.title,
              style: isActive
                  ? AppStyles.styleSemiBold16(context).copyWith(
                      color: Colors.white,
                    )
                  : AppStyles.styleSemiBold16(context),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              model.date,
              style: isActive
                  ? AppStyles.styleRegular14(context).copyWith(
                      color: Color(0XFFFAFAFA),
                    )
                  : AppStyles.styleRegular14(context),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              model.price,
              style: isActive
                  ? AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
