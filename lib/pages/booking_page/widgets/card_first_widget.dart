import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/widgets_common/hotel_adress_widget.dart';
import 'package:app_test_vacancy/widgets_common/card_title_widget.dart';
import 'package:app_test_vacancy/widgets_common/rating_tag_widget.dart';
import 'package:flutter/material.dart';

class CardFirstWidget extends StatelessWidget {
  final BookingInfoModel data;
  const CardFirstWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadiusCard),
        color: kColorCardBGlight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RatingTagWidget(
            rating: data.horating.toDouble(),
            ratingName: data.ratingName,
          ),
          const SizedBox(height: 8),
          CardTitleWidget(title: data.hotelName),
          const SizedBox(height: 8),
          HotelAdressWidget(adress: data.hotelAdress),
        ],
      ),
    );
  }
}
