import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:app_test_vacancy/widgets_common/gallery_widget2.dart';
import 'package:app_test_vacancy/widgets_common/hotel_adress_widget.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/hotel_description_widget.dart';
import 'package:app_test_vacancy/widgets_common/card_title_widget.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/price_widget.dart';
import 'package:app_test_vacancy/widgets_common/rating_tag_widget.dart';
import 'package:app_test_vacancy/widgets_common/tags_widget.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/tile_bars.dart';
import 'package:app_test_vacancy/pages/room_page/room_page.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/widgets_common/action_button.dart';
import 'package:app_test_vacancy/widgets_common/bottom_action_widget.dart';
import 'package:flutter/material.dart';

class HotelPageLoaded extends StatelessWidget {
  final HotelInfoModel data;

  const HotelPageLoaded({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).hotel.capitalizeFirst(),
        ),
      ),
      bottomNavigationBar: BottomActionWidget(
        button: ActionButton(
          text: S.of(context).to_room_selection.capitalizeFirst(),
          onTap: () {
            // Navigator.of(context).pushNamed('/room');
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RoomPage(
                      hotelName: data.name,
                    )));
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            //*first card
            Container(
              decoration: kDecorationCardFirst,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GalleryWidget2(imageUrls: data.imageUrls),
                  const SizedBox(height: 16),
                  RatingTagWidget(
                      rating: data.rating.toDouble(),
                      ratingName: data.ratingName),
                  const SizedBox(height: 16),
                  CardTitleWidget(title: data.name),
                  const SizedBox(height: 8),
                  HotelAdressWidget(adress: data.adress),
                  const SizedBox(height: 16),
                  PriceWidget(
                    price: data.minimalPrice.toDouble(),
                    pricePer: data.priceForIt,
                    isMinimalPrice: true,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 8),

            //*second card about the hotel
            Container(
              decoration: kDecorationCardSecond,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),

                    //*about the hotel text
                    Text(
                      S.of(context).about_the_hotel.capitalizeFirst(),
                      style: const TextStyle(
                        fontSize: 22,
                        fontFamily: kFontFamilyDefault,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 16),

                    TagsWidget(data: data.peculiarities),

                    const SizedBox(height: 16),

                    HotelDescriptionWidget(data: data),

                    const SizedBox(height: 16),

                    const TileBars(),
                    const SizedBox(height: kPaddingHorizApp),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
