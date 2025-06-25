import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.model});
  final TransactionModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
          color: Color(0XFFFAFAFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  model.title,
                  style: AppStyles.styleSemiBold16(context),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  model.date,
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: Color(0XFFAAAAAA),
                  ),
                ),
              ),
            ],
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.amount,
              style: AppStyles.styleSemiBold20(context).copyWith(
                color:
                    model.iswithdrawal ? Color(0XFFF3735E) : Color(0XFF7CD87A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
