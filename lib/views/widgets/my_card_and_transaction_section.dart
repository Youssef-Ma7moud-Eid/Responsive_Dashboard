import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(15),
      decoration: ShapeDecoration(
        color: Color(0XFFFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCard(),
          Divider(
            height: 24,
            color: Color(0XFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}

