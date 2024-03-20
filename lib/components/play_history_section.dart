import 'package:flutter/material.dart';
import 'package:flutter_sample/components/colors.dart';
import 'package:flutter_sample/components/images.dart';
import 'package:flutter_sample/components/messages.dart';
import 'package:flutter_sample/components/sizes.dart';
import 'package:flutter_sample/components/text_styles.dart';

/// 遊んだゲームの履歴 セクション
class PlayHistorySection extends StatelessWidget {
  const PlayHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.p20),
      ),
      child: Container(
        color: MyColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Images.games.path),
            Divider(
              thickness: Sizes.p1point5,
              height: Sizes.p1point5,
              color: MyColors.lightGrey,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(
                Sizes.p20,
                Sizes.p14,
                Sizes.p20,
                Sizes.p14,
              ),
              child: Row(
                children: [
                  const Text(
                    Messages.historiesOfPlay,
                    style: MyTextStyles.mBold,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: Sizes.p14,
                    color: MyColors.darkGrey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
