import 'package:flutter/material.dart';
import 'package:flutter_sample/components/checkin_history_section.dart';
import 'package:flutter_sample/components/colors.dart';
import 'package:flutter_sample/components/fixtures.dart';
import 'package:flutter_sample/components/gap.dart';
import 'package:flutter_sample/components/play_history_section.dart';
import 'package:flutter_sample/components/point_section.dart';
import 'package:flutter_sample/components/sizes.dart';
import 'package:flutter_sample/components/user_history_section.dart';

class MyPageBody extends StatelessWidget {
  const MyPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      color: MyColors.lightGrey,
      child: const Column(
        children: [
          PointSection(
            silverPoints: Fixtures.slverPoints,
            goldPoints: Fixtures.goldPoints,
          ),
          Gap.h14,
          UserHistorySection(
            exampleGameTilte: Fixtures.exampleGameTilte,
            examplePlayHistory: Fixtures.examplePlayHistory,
            exampleEventTilte: Fixtures.exampleEventTilte,
          ),
          Gap.h14,
          PlayHistorySection(),
          Gap.h14,
          CheckinHistorySection(),
        ],
      ),
    );
  }
}
