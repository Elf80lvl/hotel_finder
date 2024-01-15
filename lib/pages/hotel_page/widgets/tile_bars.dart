import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TileBars extends StatelessWidget {
  const TileBars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: kColorBarButtonBGlight,
        borderRadius: BorderRadius.circular(kBorderRadiusButtonBarBG),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SingleTileButton(
            icon: SvgPicture.asset(
              'assets/icons/facilitiesIcon.svg',
            ),
            title: S.of(context).facilities.capitalizeFirst(),
            subtitle: S.of(context).all_necessary.capitalizeFirst(),
          ),
          const TileButtonDivider(),
          SingleTileButton(
            icon: SvgPicture.asset(
              'assets/icons/includedIcon.svg',
            ),
            title: S.of(context).included.capitalizeFirst(),
            subtitle: S.of(context).all_necessary.capitalizeFirst(),
          ),
          const TileButtonDivider(),
          SingleTileButton(
            icon: SvgPicture.asset(
              'assets/icons/notIncludedIcon.svg',
            ),
            title: S.of(context).not_included.capitalizeFirst(),
            subtitle: S.of(context).all_necessary.capitalizeFirst(),
          ),
        ],
      ),
    );
  }
}

class TileButtonDivider extends StatelessWidget {
  const TileButtonDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 42),
      child: Container(
        // padding: EdgeInsets.only(left: 64),
        height: 1,
        width: double.infinity,
        color: kColorDivider,
      ),
    );
  }
}

class SingleTileButton extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subtitle;

  const SingleTileButton({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      onTap: () {},
      minLeadingWidth: 0,
      leading: SizedBox(
        height: double.infinity,
        child: icon,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: kColorBarButtonTextLight,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: kColorBarButtonTextSecondaryLight,
        ),
      ),
      trailing: RotatedBox(
          quarterTurns: 2,
          child: SvgPicture.asset('assets/icons/arrowBackIcon.svg')),
    );
  }
}
