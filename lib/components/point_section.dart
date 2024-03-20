import 'package:flutter/material.dart';
import 'package:flutter_sample/components/colors.dart';
import 'package:flutter_sample/components/gap.dart';
import 'package:flutter_sample/components/images.dart';
import 'package:flutter_sample/components/messages.dart';
import 'package:flutter_sample/components/sizes.dart';
import 'package:flutter_sample/components/text_styles.dart';

class PointSection extends StatelessWidget {
  const PointSection({
    super.key,
    required this.silverPoints,
    required this.goldPoints,
  });

  final int silverPoints;
  final int goldPoints;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p14),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(Sizes.p20),
      ),
      child: Row(
        children: [
          const Text(
            Messages.points,
            style: MyTextStyles.s,
          ),
          const Spacer(),
          SizedBox(
            width: Sizes.p20,
            height: Sizes.p20,
            child: Image.asset(Images.silverCoin.path),
          ),
          Gap.w5,
          Text(
            '$silverPoints',
            style: MyTextStyles.lBold,
          ),
          Gap.w10,
          SizedBox(
            width: Sizes.p20,
            height: Sizes.p20,
            child: Image.asset(Images.goldCoin.path),
          ),
          Gap.w5,
          Text(
            '$goldPoints',
            style: MyTextStyles.lBold,
          ),
        ],
      ),
    );
  }
}
