import 'package:app_test_vacancy/const/const.dart';
import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/widgets_common/action_button.dart';
import 'package:app_test_vacancy/widgets_common/appbar_custom_widget.dart';
import 'package:app_test_vacancy/widgets_common/bottom_action_widget.dart';
import 'package:app_test_vacancy/widgets_common/card_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_test_vacancy/service/order_generator.dart';

class PaidPage extends StatelessWidget {
  const PaidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kSizeAppBarHeight),
        child: AppBarCustomWidget(
          title: S.of(context).paid.capitalizeFirst(),
          isBackArrow: true,
        ),
      ),
      bottomNavigationBar: BottomActionWidget(
        button: ActionButton(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          text: S.of(context).super_text.capitalizeFirst(),
        ),
      ),
      backgroundColor: kColorCardBGlight,
      body: Padding(
        padding: const EdgeInsets.all(kPaddingHorizApp),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 94,
                height: 94,
                decoration: const BoxDecoration(
                  color: kColorTextFieldBGlight,
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/icons/party.png'),
              ),
              const SizedBox(height: 32),
              CardTitleWidget(
                  title: S.of(context).order_succes_text.capitalizeFirst()),
              const SizedBox(height: 20),
              Text(
                '${S.of(context).order_succes_text2} №${OrderGenerator.generate()} ${S.of(context).order_succes_text3}',
                textAlign: TextAlign.center,
                style: _style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const _style = TextStyle(
  fontSize: 16,
  color: kColorTextSecondaryLight,
);
