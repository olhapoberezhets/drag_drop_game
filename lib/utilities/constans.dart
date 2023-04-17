import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color appColor = Color(0xFFd6e0ff);
const Color boxColor = Color(0xFF5792ff);
const Color buttonColot = Color(0xfff0f3fb);
const Color blackColor = Colors.black87;
const Color whiteColor = Colors.white;

final kTextStyle = TextStyle(
  color: whiteColor,
  fontWeight: FontWeight.bold,
  fontSize: 20.0.sp,
  decoration: TextDecoration.none,
);

final kTitleStyle = TextStyle(
  color: blackColor,
  fontWeight: FontWeight.bold,
  fontSize: 20.0.sp,
  decoration: TextDecoration.none,
);

final kButtonStyle = OutlinedButton.styleFrom(
  backgroundColor: boxColor,
  side: const BorderSide(style: BorderStyle.none),
  shape: const StadiumBorder(),
);

final kBoxDecoration = BoxDecoration(
  color: boxColor,
  borderRadius: BorderRadius.all(Radius.circular(15.0.r)),
);
