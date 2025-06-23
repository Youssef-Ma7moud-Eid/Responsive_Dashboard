import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 75,
          child: QuickInvoiceListView(),
        ),
      ],
    );
  }
}
