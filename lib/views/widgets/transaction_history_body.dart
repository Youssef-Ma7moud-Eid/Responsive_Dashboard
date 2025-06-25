import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';

class TransactionHistoryBody extends StatelessWidget {
  const TransactionHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '13 April 2022',
              style: AppStyles.styleRegular16(context).copyWith(
                color: Color(0XFFAAAAAA),
              ),
            ),
          ),
          TransactionItem(
            model: TransactionModel(
                title: 'Cash Withdrawal',
                date: '13 Apr, 2022',
                amount: r'$20,129',
                iswithdrawal: true),
          ),
          TransactionItem(
            model: TransactionModel(
                title: 'Landing Page project',
                date: '13 Apr, 2022 at 3:30 PM',
                amount: r'$2,000',
                iswithdrawal: false),
          ),
          TransactionItem(
            model: TransactionModel(
                title: 'Juni Mobile App project',
                date: '13 Apr, 2022 at 3:30 PM',
                amount: r'$20,129',
                iswithdrawal: false),
          ),
        ],
      ),
    );
  }
}