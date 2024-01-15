import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/booking_page_bloc/booking_page_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/tourists_bloc/tourists_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_add_tourist.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_buyer_info.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_first_widget.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_prices.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_second_widget.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_tourist.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/widgets_common/action_button.dart';
import 'package:app_test_vacancy/widgets_common/appbar_custom_widget.dart';
import 'package:app_test_vacancy/widgets_common/bottom_action_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingPageLoaded extends StatelessWidget {
  final BookingInfoModel data;
  const BookingPageLoaded({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kSizeAppBarHeight),
        child: AppBarCustomWidget(
          title: S.of(context).booking.capitalizeFirst(),
          isBackArrow: true,
        ),
      ),
      bottomNavigationBar: BottomActionWidget(
        button: BlocListener<BookingPageBloc, BookingPageState>(
          listener: (context, state) {
            if (state is BookinPageSuccesState) {
              Navigator.pushNamed(context, '/paid');
            }
          },
          child: BlocBuilder<BookingPageBloc, BookingPageState>(
            builder: (context, state) {
              return ActionButton(
                text:
                    '${S.of(context).pay.capitalizeFirst()} ${data.tourPrice + data.fuelCharge + data.serviceCharge} ₽',
                onTap: () {
                  BlocProvider.of<BookingPageBloc>(context)
                      .add(BookingPageOnSubmitEvent());

                  // BlocProvider.of<TouristsBloc>(context).add(TouristsOnSubmitEvent());
                },
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            CardFirstWidget(data: data),
            const SizedBox(height: 8),
            CardSecondWidget(data: data),
            const SizedBox(height: 8),
            const CardBuyerInfo(),
            const SizedBox(height: 8),

            //*tourists. Generate amount of CardTourists based on the touristsCounter from bloc
            BlocBuilder<TouristsBloc, TouristsState>(
              builder: (context, state) {
                return Column(
                  children: List.generate(
                    state.touristsCounter,
                    (index) => CardTourist(
                      index: index,
                    ),
                  ),
                );
              },
            ),

            const CardAddTourist(),
            const SizedBox(height: 8),
            const CardPrices(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
