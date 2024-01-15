import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/tourists_bloc/tourists_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/text_field_custom.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/service/number_to_words.dart';
import 'package:app_test_vacancy/service/validator.dart';
import 'package:app_test_vacancy/widgets_common/card_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CardTourist extends StatefulWidget {
  final int index;
  const CardTourist({
    super.key,
    required this.index,
  });

  @override
  State<CardTourist> createState() => _CardTouristState();
}

class _CardTouristState extends State<CardTourist> {
  final _formKey = GlobalKey<FormState>();
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TouristsBloc, TouristsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
            decoration: BoxDecoration(
              color: kColorCardBGlight,
              borderRadius: BorderRadius.circular(kBorderRadiusCard),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kPaddingHorizApp),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardTitleWidget(
                        isHorizPadding: false,
                        title:
                            '${NumberToWords.getTouristString(widget.index + 1)} ${S.of(context).tourist}',
                      ),
                      //*button
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: kColorButtonLight.withOpacity(0.1),
                          borderRadius:
                              BorderRadius.circular(kBorderRadiusIconButton),
                        ),
                        child: RotatedBox(
                          quarterTurns: _isExpanded ? 1 : 3,
                          child: SvgPicture.asset(
                            'assets/icons/arrowBackIcon.svg',
                            colorFilter: ColorFilter.mode(
                                kColorButtonLight, BlendMode.srcIn),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                //*name
                if (_isExpanded)
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //*name
                        TextFieldCustom(
                          isValid: true,
                          onChanged: (text) {
                            BlocProvider.of<TouristsBloc>(context).add(
                                TouristUpdateNameEvent(
                                    index: widget.index, name: text));
                          },
                          hint: S.of(context).name.capitalizeFirst(),
                          errorText:
                              S.of(context).name_invalid.capitalizeFirst(),
                        ),
                        const SizedBox(height: 8),
                        //*surname
                        TextFieldCustom(
                          isValid: true,
                          onChanged: (text) {
                            BlocProvider.of<TouristsBloc>(context).add(
                                TouristUpdateSurnameEvent(
                                    index: widget.index, surname: text));
                          },
                          hint: S.of(context).surname.capitalizeFirst(),
                          errorText:
                              S.of(context).surname_invalid.capitalizeFirst(),
                        ),
                        const SizedBox(height: 8),
                        //*date of birth
                        TextFieldCustom(
                          isValid: true,
                          onChanged: (text) {
                            BlocProvider.of<TouristsBloc>(context).add(
                                TouristUpdateSurnameEvent(
                                    index: widget.index, surname: text));
                          },
                          hint: S.of(context).date_of_birth.capitalizeFirst(),
                          errorText: S
                              .of(context)
                              .date_of_birth_invalid
                              .capitalizeFirst(),
                        ),
                        const SizedBox(height: 8),

                        //*citizenship
                        TextFieldCustom(
                          isValid: true,
                          onChanged: (text) {
                            BlocProvider.of<TouristsBloc>(context).add(
                                TouristUpdateSurnameEvent(
                                    index: widget.index, surname: text));
                          },
                          hint: S.of(context).citizenship.capitalizeFirst(),
                          errorText: S
                              .of(context)
                              .citizenship_invalid
                              .capitalizeFirst(),
                        ),
                        const SizedBox(height: 8),

                        //*pass number
                        TextFieldCustom(
                          isValid: true,
                          onChanged: (text) {
                            BlocProvider.of<TouristsBloc>(context).add(
                                TouristUpdateSurnameEvent(
                                    index: widget.index, surname: text));
                          },
                          hint: S.of(context).passport_number.capitalizeFirst(),
                          errorText: S
                              .of(context)
                              .passport_number_invalid
                              .capitalizeFirst(),
                        ),

                        const SizedBox(height: 8),

                        //*pass exp date
                        TextFieldCustom(
                          isValid: true,
                          onChanged: (text) {
                            BlocProvider.of<TouristsBloc>(context).add(
                                TouristUpdateSurnameEvent(
                                    index: widget.index, surname: text));
                          },
                          hint:
                              S.of(context).passport_exp_date.capitalizeFirst(),
                          errorText: S
                              .of(context)
                              .passport_exp_date_invalid
                              .capitalizeFirst(),
                        ),
                        const SizedBox(height: kPaddingHorizApp),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
