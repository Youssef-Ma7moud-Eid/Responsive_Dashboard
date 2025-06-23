import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TextFormFieldS extends StatelessWidget {
  const TextFormFieldS({super.key, required this.rightpadding, this.hint});
  final double rightpadding;
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0XFFFAFAFA),
        filled: true,
        contentPadding:
            EdgeInsets.only(left: 20, top: 20, bottom: 20, right: rightpadding),
        hintText: hint ?? "USD",
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: Color(0XFFAAAAAA),
        ),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(),
      ),
    );
  }

  OutlineInputBorder buildborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Color(0XFFFAFAFA),
      ),
    );
  }
}