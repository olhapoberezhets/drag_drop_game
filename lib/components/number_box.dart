import 'package:drag_drop_game/utilities/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberBox extends StatelessWidget {
  const NumberBox({
    super.key,
    required this.number,
  });

  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10.0.h),
      width: 150.0.w,
      height: 150.0.h,
      decoration: kBoxDecoration,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Padding(
          padding: EdgeInsets.all(4.0.h),
          child: Text(
            number,
            style: kTextStyle,
          ),
        ),
      ),
    );
  }
}
