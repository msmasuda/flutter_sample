import 'package:flutter/material.dart';
import 'package:flutter_sample/components/my_page_body.dart';
import 'package:flutter_sample/components/my_page_header.dart';

class MyPage extends StatelessWidget {
  const MyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          MyPageHeader(
            onPressedSettingButton: () {
              debugPrint('設定ボタンが押されました');
            },
          ),
          // Body
          const MyPageBody(),
        ],
      ),
    );
  }
}
