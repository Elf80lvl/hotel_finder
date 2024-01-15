import 'package:app_test_vacancy/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatingTagWidget extends StatelessWidget {
  const RatingTagWidget({
    super.key,
    required this.rating,
    required this.ratingName,
    // required this.data,
  });

  // final HotelInfoModel data;
  final double rating;
  final String ratingName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
      child: Container(
        decoration: BoxDecoration(
          color: kColorRatingTagBG,
          borderRadius: BorderRadius.circular(5),
        ),
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/star.svg'),
                const SizedBox(width: 2),
                Text(
                  '${rating.floor()} $ratingName',
                  style: const TextStyle(
                    fontFamily: kFontFamilyDefault,
                    color: kColorRatingTagPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
