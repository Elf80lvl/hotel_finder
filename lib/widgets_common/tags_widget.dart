import 'package:app_test_vacancy/const/const.dart';
import 'package:flutter/material.dart';

class TagsWidget extends StatelessWidget {
  final List<String> data;
  const TagsWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.start,
      runSpacing: 8,
      spacing: 8,
      children: List.generate(
        data.length,
        (index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: kColorTagBG,
            borderRadius: BorderRadius.circular(kBorderRadiusRatingTag),
          ),
          child: Text(
            data[index].toString(),
            style: const TextStyle(
              fontFamily: kFontFamilyDefault,
              color: kColorTagTextGrey,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
