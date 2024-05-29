import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nothing_calc/constants/constants.dart';

class CalcButton extends StatelessWidget {
  final void Function() onPressed;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  const CalcButton(
      {required this.onPressed,
      required this.buttonText,
      required this.buttonColor,
      required this.buttonTextColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: buttonTextColor,
                fontFamily: Fonts.ndot,
                fontSize: 15.sp),
          ),
        ),
      ),
    );
  }
}
