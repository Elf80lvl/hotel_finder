import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/booking_page_bloc/booking_page_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/card_second_widget.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/service/currency_char.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardPrices extends StatelessWidget {
  const CardPrices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingPageBloc, BookingPageState>(
      builder: (context, state) {
        if (state is BookingPageLoadedState) {
          final int fullPrice = state.data!.fuelCharge +
              state.data!.serviceCharge +
              state.data!.tourPrice;
          return Container(
            padding: const EdgeInsets.only(
              left: kPaddingHorizApp,
              right: kPaddingHorizApp,
              top: kPaddingHorizApp,
            ),
            decoration: BoxDecoration(
              color: kColorCardBGlight,
              borderRadius: BorderRadius.circular(kBorderRadiusCard),
            ),
            child: Column(
              children: [
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(1),
                  },
                  border: TableBorder.all(
                    width: 0,
                    color: Colors.transparent,
                  ),
                  // defaultVerticalAlignment: TableCellVerticalAlignment.top,
                  children: [
                    //*tour
                    TableRow(
                      children: [
                        CellLeftWidget(
                            text: S.of(context).tour.capitalizeFirst()),
                        CellRightWidget(
                          isRightAlign: true,
                          text:
                              '${state.data!.tourPrice.toString()} ${CurrencyChar.getChar()}',
                        ),
                      ],
                    ),

                    //*fuel charge
                    TableRow(
                      children: [
                        CellLeftWidget(
                            text: S.of(context).fuel_charge.capitalizeFirst()),
                        CellRightWidget(
                          isRightAlign: true,
                          text:
                              '${state.data!.fuelCharge.toString()} ${CurrencyChar.getChar()}',
                        ),
                      ],
                    ),

                    //*service charge
                    TableRow(
                      children: [
                        CellLeftWidget(
                            text:
                                S.of(context).service_charge.capitalizeFirst()),
                        CellRightWidget(
                          isRightAlign: true,
                          text:
                              '${state.data!.serviceCharge.toString()} ${CurrencyChar.getChar()}',
                        ),
                      ],
                    ),

                    //*full price
                    TableRow(
                      children: [
                        CellLeftWidget(
                            text: S.of(context).fuel_charge.capitalizeFirst()),
                        CellRightWidget(
                          isRightAlign: true,
                          color: kColorLink,
                          fontWeight: FontWeight.w500,
                          text: '$fullPrice ${CurrencyChar.getChar()}',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return Text('error');
        }
      },
    );
  }
}
