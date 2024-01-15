import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/booking_page_bloc/booking_page_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/error_text_for_tf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFieldPhone extends StatefulWidget {
  final String errorText;

  final String hint;
  final bool isValid;

  const TextFieldPhone({
    super.key,
    required this.hint,
    required this.errorText,
    required this.isValid,
  });

  @override
  State<TextFieldPhone> createState() => _TextFieldPhoneState();
}

class _TextFieldPhoneState extends State<TextFieldPhone> {
  TextEditingController _controller = TextEditingController();

  final _phoneMask = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 8),
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadiusTextField),
        color:
            !widget.isValid ? kColorTextFieldErrorBG : kColorTextFieldBGlight,
        // color: Colors.red,
      ),
      child: Stack(
        children: [
          Center(
            child: TextFormField(
              inputFormatters: [_phoneMask],
              // focusNode: _focusNode,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              // validator: (value) {
              //   if (value!.isValidEmail()) {
              //     isError = false;

              //     return null;
              //   } else {
              //     isError = true;

              //     return "Check your email";
              //   }
              // },

              onChanged: (value) {
                BlocProvider.of<BookingPageBloc>(context)
                    .add(BookingPageUpdatePhoneEvent(phone: value));
              },
              controller: _controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                // isCollapsed: true,

                isDense: true,
                // contentPadding: const EdgeInsets.symmetric(
                //     horizontal: kPaddingHorizApp, vertical: kPaddingHorizApp),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: kPaddingHorizApp,
                  vertical: 6.0,
                ),
                labelText: widget.hint,
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
                fillColor: !widget.isValid
                    ? Colors.transparent
                    : kColorTextFieldBGlight,
                alignLabelWithHint: true,

                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(kBorderRadiusTextField),
                ),
              ),
            ),
          ),
          ErrorTextForTF(
            text: widget.isValid ? '' : widget.errorText,
          ),
        ],
      ),
    );
  }
}
