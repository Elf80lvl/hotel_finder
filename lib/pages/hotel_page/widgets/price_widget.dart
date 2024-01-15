import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.price,
    required this.pricePer,
    required this.isMinimalPrice,
    // required this.data,
  });

  // final HotelInfoModel data;
  final double price;
  final String pricePer;
  final bool isMinimalPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              isMinimalPrice
                  ? '${S.of(context).from} ${price.toString()} ₽ '
                  : '${price.toString()} ₽ ',
              style: const TextStyle(
                fontFamily: kFontFamilyDefault,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              pricePer.toLowerCase(),
              style: const TextStyle(
                fontFamily: kFontFamilyDefault,
                fontSize: 16,
                color: kColorTextSecondaryLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
