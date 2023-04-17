import 'package:drag_drop_game/components/appbar.dart';
import 'package:drag_drop_game/screens/game_screen.dart';
import 'package:drag_drop_game/utilities/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: CustomAppBar(toolbarHeight: 200.0.h),
      body: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.only(right: 30.0.w, bottom: 40.0.h),
          child: SizedBox(
            width: 150.0.w,
            height: 40.0.h,
            child: OutlinedButton(
              style: kButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GameScreen()),
                );
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
