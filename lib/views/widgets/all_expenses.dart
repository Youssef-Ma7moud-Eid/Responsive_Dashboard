import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_body.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});
  static List<ExpensesItemModel> list = [
    ExpensesItemModel(
        image: AppImages.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    ExpensesItemModel(
        image: AppImages.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    ExpensesItemModel(
        image: AppImages.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: AllExpensesBody(
              list: list,
            ),
          ),
        ],
      ),
    );
  }
}
