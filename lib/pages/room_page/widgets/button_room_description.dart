import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonRoomDescription extends StatelessWidget {
  const ButtonRoomDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: const EdgeInsets.only(left: 10, top: 0, bottom: 0, right: 0),
          decoration: BoxDecoration(
            color: kColorTagLinkBG,
            borderRadius: BorderRadius.circular(kBorderRadiusRatingTag),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.of(context).room_description.capitalizeFirst(),
                style: const TextStyle(
                  color: kColorLink,
                  fontSize: 16,
                  fontFamily: kFontFamilyDefault,
                  fontWeight: FontWeight.w500,
                ),
              ),
              RotatedBox(
                quarterTurns: 2,
                child: SvgPicture.asset(
                  'assets/icons/arrowBackIcon.svg',
                  colorFilter: const ColorFilter.mode(
                    kColorLink,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
