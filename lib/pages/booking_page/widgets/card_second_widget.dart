import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:flutter/material.dart';

class CardSecondWidget extends StatelessWidget {
  const CardSecondWidget({
    super.key,
    required this.data,
  });

  final BookingInfoModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
      decoration: BoxDecoration(
        color: kColorCardBGlight,
        borderRadius: BorderRadius.circular(kBorderRadiusCard),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(1.5),
          },
          border: TableBorder.all(
            width: 0,
            color: Colors.transparent,
          ),
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: [
            TableRow(
              children: [
                CellLeftWidget(text: S.of(context).cell1.capitalizeFirst()),
                CellRightWidget(text: data.departure),
              ],
            ),
            TableRow(
              children: [
                CellLeftWidget(text: S.of(context).cell2.capitalizeFirst()),
                CellRightWidget(text: data.arrivalCountry),
              ],
            ),
            TableRow(
              children: [
                CellLeftWidget(text: S.of(context).cell3.capitalizeFirst()),
                CellRightWidget(
                    text: '${data.tourDateStart} - ${data.tourDateStop}'),
              ],
            ),
            TableRow(
              children: [
                CellLeftWidget(text: S.of(context).cell4.capitalizeFirst()),
                CellRightWidget(
                    text: '${data.numberOfNights} ${S.of(context).nights}'),
              ],
            ),
            TableRow(
              children: [
                CellLeftWidget(text: S.of(context).cell5.capitalizeFirst()),
                CellRightWidget(text: data.hotelName),
              ],
            ),
            TableRow(
              children: [
                CellLeftWidget(text: S.of(context).cell6.capitalizeFirst()),
                CellRightWidget(text: data.room),
              ],
            ),
            TableRow(
              children: [
                CellLeftWidget(text: S.of(context).cell7.capitalizeFirst()),
                CellRightWidget(text: data.nutrition),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CellRightWidget extends StatelessWidget {
  final bool? isRightAlign;
  final FontWeight? fontWeight;
  final Color? color;
  final String text;
  const CellRightWidget({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.isRightAlign,
  });

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.top,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Align(
          alignment: (isRightAlign != null && isRightAlign == true)
              ? Alignment.topRight
              : Alignment.topLeft,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: kFontFamilyDefault,
              fontSize: 16,
              color: color ?? kColorTextTitleLight,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}

class CellLeftWidget extends StatelessWidget {
  final String text;
  const CellLeftWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.top,
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: kFontFamilyDefault,
          fontSize: 16,
          color: kColorTextSecondaryLight,
        ),
      ),
    );
  }
}
