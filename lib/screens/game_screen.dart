import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:drag_drop_game/components/appbar.dart';
import 'package:drag_drop_game/components/number_box.dart';
import 'package:drag_drop_game/utilities/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final Map<String, bool> pair = {};
  final Map<String, String> choices = {
    '1': 'one',
    '2': 'two',
    '3': 'three',
  };

  int seed = 0;

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: const CustomAppBar(isHomeScreen: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0.h),
          child: Row(
            children: [
              Expanded(
                child: Column(
                    children: choices.keys.map((number) {
                  return Draggable<String>(
                    data: number,
                    feedback: NumberBox(number: number),
                    childWhenDragging: SizedBox(
                      height: 170.0.h,
                      width: 170.0.w,
                    ),
                    child: pair[number] == true
                        ? SizedBox(
                            height: 170.0.h,
                            width: 170.0.w,
                          )
                        : NumberBox(number: number),
                  );
                }).toList()),
              ),
              SizedBox(height: 20.0.h),
              Expanded(
                child: Column(
                  children: choices.keys
                      .map((number) => _buildDragTarget(number))
                      .toList()
                    ..shuffle(Random(seed)),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            pair.clear();
            seed++;
          });
        },
        backgroundColor: buttonColot,
        child: const Icon(
          Icons.refresh_outlined,
          color: boxColor,
        ),
      ),
    );
  }

  Widget _buildDragTarget(number) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String?> incoming, List rejected) {
        if (pair[number] == true) {
          return NumberBox(number: number);
        } else {
          return NumberBox(number: choices[number]!);
        }
      },
      onWillAccept: (data) => data == number,
      onAccept: (data) {
        setState(() {
          pair[number] = true;
        });
        player.play(AssetSource('great.wav'));
      },
      onLeave: (data) {},
    );
  }
}
