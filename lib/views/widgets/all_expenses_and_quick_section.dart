import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickSection extends StatelessWidget {
  const AllExpensesAndQuickSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        Expanded(child: QuickInvoice()),
      ],
    );
  }
}
