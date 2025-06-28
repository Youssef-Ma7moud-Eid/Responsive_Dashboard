import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_section.dart';

class MycardAndIncomesection extends StatelessWidget {
  const MycardAndIncomesection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCardAndTransactionSection(),
        SizedBox(
          height: 10,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
