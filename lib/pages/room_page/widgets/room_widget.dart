import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/pages/hotel_page/widgets/price_widget.dart';
import 'package:app_test_vacancy/pages/room_page/widgets/button_room_description.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/widgets_common/action_button.dart';
import 'package:app_test_vacancy/widgets_common/gallery_widget2.dart';
import 'package:app_test_vacancy/widgets_common/tags_widget.dart';
import 'package:flutter/material.dart';

class RoomWidget extends StatelessWidget {
  final String name;
  final double price;
  final String pricePer;
  final List<String> peculiarities;
  final List<String> imageUrls;
  const RoomWidget({
    super.key,
    required this.name,
    required this.price,
    required this.pricePer,
    required this.peculiarities,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        // padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: kColorCardBGlight,
          borderRadius: BorderRadius.circular(kBorderRadiusCard),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            GalleryWidget2(imageUrls: imageUrls),
            const SizedBox(height: 16),
            //*name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  fontFamily: kFontFamilyDefault,
                ),
              ),
            ),
            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TagsWidget(data: peculiarities),
            ),

            const SizedBox(height: 8),

            const ButtonRoomDescription(),

            const SizedBox(height: 16),

            PriceWidget(
              price: price,
              pricePer: pricePer,
              isMinimalPrice: false,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ActionButton(
                text: S.of(context).choose_number.capitalizeFirst(),
                onTap: () {
                  //TODO this should have been an api call event if it was a real app (?)
                  Navigator.pushNamed(context, '/booking');
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
