import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';

class TransactionHistoryBody extends StatelessWidget {
  const TransactionHistoryBody({super.key});
  static final items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        amount: r'$20,129',
        iswithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        iswithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$20,129',
        iswithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: items
          .map(
            (e) => TransactionItem(model: e),
          )
          .toList(),
    );
  }
}
