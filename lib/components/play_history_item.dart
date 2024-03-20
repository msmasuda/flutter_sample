import 'package:flutter/material.dart';
import 'package:flutter_sample/components/gap.dart';
import 'package:flutter_sample/components/images.dart';
import 'package:flutter_sample/components/text_styles.dart';

/// 遊んだゲームの履歴 1つ分
class PlayHistoryItem extends StatelessWidget {
  const PlayHistoryItem({
    super.key,
    required this.gameTitle,
    required this.value,
  });

  final String gameTitle;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Images.animalCrossing.path),
        Gap.w10,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                gameTitle,
                style: MyTextStyles.sGrey,
              ),
              const Spacer(),
              Text(
                value,
                textAlign: TextAlign.right,
                style: MyTextStyles.lBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
