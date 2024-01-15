import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/tourists_bloc/tourists_bloc.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/widgets_common/card_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardAddTourist extends StatelessWidget {
  const CardAddTourist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kPaddingHorizApp),
      decoration: BoxDecoration(
        color: kColorCardBGlight,
        borderRadius: BorderRadius.circular(kBorderRadiusCard),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardTitleWidget(title: S.of(context).add_tourist.capitalizeFirst()),
          //*button
          GestureDetector(
            onTap: () {
              BlocProvider.of<TouristsBloc>(context).add(TouristsAddEvent());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: kColorButtonLight,
                  borderRadius: BorderRadius.circular(kBorderRadiusIconButton),
                ),
                child: const Icon(
                  Icons.add,
                  color: kColorCardBGlight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
