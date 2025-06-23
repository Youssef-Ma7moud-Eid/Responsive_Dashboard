import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/form_section.dart';
import 'package:responsive_dash_board/views/widgets/latest_transaction_section.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransactionSection(),
          Divider(
            height: 48,
            color: Color(0XFFF1F1F1),
          ),
          FormsSection(),
        ],
      ),
    );
  }
}





