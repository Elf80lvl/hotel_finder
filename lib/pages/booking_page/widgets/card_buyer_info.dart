import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/booking_page_bloc/booking_page_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/text_field_email.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/text_field_phone.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/widgets_common/card_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CardBuyerInfo extends StatefulWidget {
  const CardBuyerInfo({
    super.key,
  });

  @override
  State<CardBuyerInfo> createState() => _CardBuyerInfoState();
}

class _CardBuyerInfoState extends State<CardBuyerInfo> {
  final _formPhoneEmail = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final _phoneMask = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  void initState() {
    super.initState();
    // _phoneController.text = '+7';
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingPageBloc, BookingPageState>(
      builder: (context, state) {
        if (state is BookingPageLoadedState) {
          return Container(
            width: double.infinity,
            // padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
            decoration: BoxDecoration(
              color: kColorCardBGlight,
              borderRadius: BorderRadius.circular(kBorderRadiusCard),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                CardTitleWidget(
                    title: S.of(context).buyer_info.capitalizeFirst()),
                const SizedBox(height: 20),
                //*Form phone and email
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kPaddingHorizApp),
                  child: Form(
                    key: _formPhoneEmail,
                    child: Column(
                      children: [
                        // TextFormFieldWidget(
                        //   phoneController: _phoneController,
                        //   hint: S.of(context).phone_number.capitalizeFirst(),
                        //   inputFormatters: [_phoneMask],
                        // ),
                        TextFieldPhone(
                          isValid: state.isPhoneValid,
                          hint: S.of(context).phone_number.capitalizeFirst(),
                          errorText:
                              S.of(context).phone_invalid.capitalizeFirst(),
                        ),
                        const SizedBox(height: 8),
                        TextFieldEmail(
                          isValid: state.isEmailValid,
                          hint: S.of(context).email.capitalizeFirst(),
                          errorText: S.of(context).email_invalid,
                        ),
                        const SizedBox(height: 8),
                        //*hint privacy
                        Text(
                          S.of(context).buyer_info_tips,
                          style: const TextStyle(
                            fontFamily: kFontFamilyDefault,
                            fontSize: 14,
                            color: kColorTextSecondaryLight,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                )
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

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  const TextFormFieldWidget(
      {super.key, required this.controller, required this.hint});

  // FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 8),
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadiusTextField),
        color: kColorTextFieldBGlight,
        // color: Colors.red,
      ),
      child: Center(
        child: TextFormField(
          // focusNode: _focusNode,

          onChanged: (value) {},
          controller: controller,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            isDense: true,
            // contentPadding: const EdgeInsets.symmetric(
            //     horizontal: kPaddingHorizApp, vertical: kPaddingHorizApp),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizApp,
              vertical: 6.0,
            ),
            labelText: hint,
            labelStyle: const TextStyle(
              fontSize: 17,
              fontFamily: kFontFamilyDefault,
              color: kColorTextFieldTextSecondaryLight,
            ),
            // hintText: 'Phone',
            // hintStyle: TextStyle(
            //   fontSize: 17,
            //   fontFamily: kFontFamilyDefault,
            //   color: kColorTextFieldTextSecondaryLight,
            // ),
            filled: true,
            fillColor: kColorTextFieldBGlight,
            alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(kBorderRadiusTextField),
            ),
          ),
        ),
      ),
    );
  }
}
