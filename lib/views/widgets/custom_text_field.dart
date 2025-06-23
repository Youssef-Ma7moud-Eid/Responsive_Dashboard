import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/text_form_field.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.title, required this.rightpadding, this.hint});
  final String title;
  final double rightpadding;
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 12,
        ),
        TextFormFieldS(hint: hint, rightpadding: rightpadding),
      ],
    );
  }
}