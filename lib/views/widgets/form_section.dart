import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/custom_text_field.dart';

class FormsSection extends StatelessWidget {
  const FormsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomTextField(
                  title: 'Customer name',
                  rightpadding: 79,
                  hint: 'Type customer name'),
            ),
            Expanded(
              child: CustomTextField(
                title: 'Customer Email',
                rightpadding: 82,
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomTextField(
                  title: 'Item name',
                  rightpadding: 80,
                  hint: 'Type customer name'),
            ),
            Expanded(
              child: CustomTextField(
                title: 'item mount',
                rightpadding: 214,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ), 
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Send Money',
                textcolor: Color(0XFF4DB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                text: 'Send Money',
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
