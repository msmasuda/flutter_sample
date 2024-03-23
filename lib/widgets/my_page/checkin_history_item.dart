import 'package:flutter/material.dart';
import 'package:flutter_sample/common/colors.dart';
import 'package:flutter_sample/common/gap.dart';
import 'package:flutter_sample/common/images.dart';
import 'package:flutter_sample/common/messages.dart';
import 'package:flutter_sample/common/text_styles.dart';

/// イベント参加の履歴 1つ分
class CheckinHistoryItem extends StatelessWidget {
  const CheckinHistoryItem({
    super.key,
    required this.eventTitle,
  });

  final String eventTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          Messages.checkedIn,
          style: MyTextStyles.xsGreen,
        ),
        Gap.h14,
        Expanded(
          child: Row(
            children: [
              Image.asset(Images.event.path),
              const Spacer(),
              const Icon(
                Icons.check_circle,
                color: MyColors.green,
              ),
              Gap.w5,
              Text(
                eventTitle,
                style: MyTextStyles.mBold,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Gap.h5
            ],
          ),
        ),
      ],
    );
  }
}
