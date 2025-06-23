import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.borderRadius,
      this.backgroundColor,
      this.textcolor});
  final String text;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  final Color? backgroundColor, textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(backgroundColor ?? Color(0XFF4DB7F2)),
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.zero,
            ),
          ),
        ),
        child: Text(
          text,
          style: AppStyles.styleSemiBold18(context).copyWith(color: textcolor),
        ),
      ),
    );
  }
}
