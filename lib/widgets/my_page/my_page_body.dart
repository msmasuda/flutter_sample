import 'package:flutter/material.dart';
import 'package:flutter_sample/widgets/my_page/checkin_history_section.dart';
import 'package:flutter_sample/common/colors.dart';
import 'package:flutter_sample/common/fixtures.dart';
import 'package:flutter_sample/common/gap.dart';
import 'package:flutter_sample/widgets/my_page/play_history_section.dart';
import 'package:flutter_sample/widgets/my_page/point_section.dart';
import 'package:flutter_sample/common/sizes.dart';
import 'package:flutter_sample/widgets/my_page/user_history_section.dart';

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
