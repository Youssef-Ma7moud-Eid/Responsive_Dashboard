import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_body.dart';
import 'package:responsive_dash_board/views/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
          color: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 10,
          ),
          Expanded(child: IncomeBody()),
        ],
      ),
    );
  }
}