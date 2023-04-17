import 'package:drag_drop_game/utilities/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.toolbarHeight,
    this.isHomeScreen = true,
  });

  final double? toolbarHeight;
  final bool isHomeScreen;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      elevation: 0.0,
      backgroundColor: appColor,
      foregroundColor: blackColor,
      leading: !isHomeScreen
          ? TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Icon(
                Icons.arrow_back_ios,
                color: boxColor,
              ),
            )
          : const SizedBox(),
      leadingWidth: isHomeScreen ? 0.0.w : 56.0.w,
      title: isHomeScreen
          ? Center(
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style: kTitleStyle.copyWith(fontSize: 30.0.sp),
                  ),
                  SizedBox(height: 30.0.h),
                  Text(
                    '🐰',
                    style: TextStyle(fontSize: 45.0.sp),
                  ),
                ],
              ),
            )
          : Text(
              'Drag and Drop game',
              style: kTitleStyle,
            ),
    );
  }

  @override
  Size get preferredSize => isHomeScreen
      ? const Size(double.infinity, 200.0)
      : const Size(double.infinity, 50.0);
}
