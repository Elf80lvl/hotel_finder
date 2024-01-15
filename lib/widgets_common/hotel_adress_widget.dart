import 'package:app_test_vacancy/const/const.dart';
// import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:flutter/material.dart';

class HotelAdressWidget extends StatelessWidget {
  const HotelAdressWidget({
    super.key,
    required this.adress,
    // required this.data,
  });

  // final HotelInfoModel data;
  final String adress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
        child: Text(
          adress,
          style: const TextStyle(
            color: kColorLink,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: kFontFamilyDefault,
          ),
        ),
      ),
    );
  }
}
