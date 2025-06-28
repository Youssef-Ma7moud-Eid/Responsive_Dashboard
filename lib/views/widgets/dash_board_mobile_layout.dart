import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_and_quick_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_income_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              IntrinsicHeight(
                child: AllExpensesAndQuickSection(),
              ),
              IntrinsicHeight(child: MycardAndIncomesection()),
            ],
          ),
        ),
      ],
    );
  }
}