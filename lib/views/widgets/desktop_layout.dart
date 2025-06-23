import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    IntrinsicHeight(child: AllExpenses()),
                    SizedBox(
                      height: 24,
                    ),
                    Expanded(child: QuickInvoice()),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(flex: 2, child: MyCard()),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
