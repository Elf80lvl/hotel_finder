import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/pages/booking_page/bloc/booking_page_bloc/booking_page_bloc.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/error_text_for_tf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldCustom extends StatefulWidget {
  final bool isValid;
  final String errorText;
  final String hint;
  final Function(String)? onChanged;

  const TextFieldCustom({
    super.key,
    required this.hint,
    required this.errorText,
    required this.onChanged,
    required this.isValid,
  });

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  TextEditingController _controller = TextEditingController();

  // bool isValid = true;

  @override
  Widget build(BuildContext context) {
    return Container(
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

              onChanged: widget.onChanged,
              onEditingComplete: () {
                setState(() {
                  //!
                  // isValid =
                });
              },
              controller: _controller,
              keyboardType: TextInputType.emailAddress,
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
