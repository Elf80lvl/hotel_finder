import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/pages/booking_page/widgets/error_text_for_tf.dart';
import 'package:flutter/material.dart';

class TextFieldCustom2 extends StatefulWidget {
  // final bool isValid;
  final String errorText;
  final String hint;
  final Function(String)? onChanged;

  const TextFieldCustom2({
    super.key,
    required this.hint,
    required this.errorText,
    required this.onChanged,
    // required this.isValid,
  });

  @override
  State<TextFieldCustom2> createState() => _TextFieldCustom2State();
}

class _TextFieldCustom2State extends State<TextFieldCustom2> {
  TextEditingController _controller = TextEditingController();
  // final focus = FocusNode();

  bool isValid = true;

  @override
  void dispose() {
    _controller;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadiusTextField),
            color: isValid ? kColorTextFieldBGlight : kColorTextFieldBGlight,
            // color: Colors.red,
            // color: kColorTextFieldBGlight,
          ),
        ),
        TextFormField(
          // focusNode: focus,
          // textInputAction: TextInputAction.next,

          autovalidateMode: AutovalidateMode.onUserInteraction,
          // onFieldSubmitted: (v) {
          //   FocusScope.of(context).requestFocus(focus);
          // },
          validator: (value) {
            isValid = false;
            if (value!.length < 3 || value.isEmpty) {
              return widget.errorText;
            }
            isValid = true;
            return null;
          },
          onChanged: widget.onChanged,
          // onEditingComplete: () {
          //   setState(
          //     () {
          //       // isValid =
          //     },
          //   );
          // },
          controller: _controller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            errorStyle: TextStyle(color: Colors.red, height: 0.05),
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
            // fillColor: !isValid ? Colors.transparent : kColorTextFieldBGlight,
            fillColor: kColorTextFieldBGlight,
            alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(kBorderRadiusTextField),
            ),
          ),
        ),
      ],
    );
  }
}
