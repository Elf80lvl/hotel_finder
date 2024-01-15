import 'package:app_test_vacancy/const/const.dart';
import 'package:flutter/material.dart';

class BottomActionWidget extends StatelessWidget {
  final Widget button;
  const BottomActionWidget({
    super.key,
    required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48 + 12 * 2,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kColorCardBGlight,
        border: Border(
          top: BorderSide(
            width: 1,
            color: kColorBottomActionWidgetTopBorder,
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
          child: button,
        ),
      ),
    );
  }
}
