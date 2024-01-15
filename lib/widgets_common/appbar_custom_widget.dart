import 'package:app_test_vacancy/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarCustomWidget extends StatelessWidget {
  const AppBarCustomWidget({
    super.key,
    required this.title,
    required this.isBackArrow,
  });

  final String title;
  final bool isBackArrow;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isBackArrow
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset('assets/icons/arrowBackIcon.svg'),
            )
          : null,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: kFontFamilyDefault,
        ),
      ),
    );
  }
}
