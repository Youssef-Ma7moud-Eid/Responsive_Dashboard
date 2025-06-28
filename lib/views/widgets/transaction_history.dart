import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_body.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 10,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '13 April 2022',
            style: AppStyles.styleRegular16(context).copyWith(
              color: Color(0XFFAAAAAA),
            ),
          ),
        ),
        TransactionHistoryBody(),
      ],
    );
  }
}