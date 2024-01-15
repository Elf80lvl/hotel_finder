import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:flutter/material.dart';

class HotelDescriptionWidget extends StatelessWidget {
  const HotelDescriptionWidget({
    super.key,
    required this.data,
  });

  final HotelInfoModel data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.description,
      style: TextStyle(
        fontSize: 16,
        fontFamily: kFontFamilyDefault,
        color: kColorTextBodyPrimaryLight.withOpacity(0.9),
      ),
    );
  }
}
