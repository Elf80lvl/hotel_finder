// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `отель`
  String get hotel {
    return Intl.message(
      'отель',
      name: 'hotel',
      desc: '',
      args: [],
    );
  }

  /// `от`
  String get from {
    return Intl.message(
      'от',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `об отеле`
  String get about_the_hotel {
    return Intl.message(
      'об отеле',
      name: 'about_the_hotel',
      desc: '',
      args: [],
    );
  }

  /// `удобства`
  String get facilities {
    return Intl.message(
      'удобства',
      name: 'facilities',
      desc: '',
      args: [],
    );
  }

  /// `что включено`
  String get included {
    return Intl.message(
      'что включено',
      name: 'included',
      desc: '',
      args: [],
    );
  }

  /// `что не включено`
  String get not_included {
    return Intl.message(
      'что не включено',
      name: 'not_included',
      desc: '',
      args: [],
    );
  }

  /// `все необходимое`
  String get all_necessary {
    return Intl.message(
      'все необходимое',
      name: 'all_necessary',
      desc: '',
      args: [],
    );
  }

  /// `к выбору номера`
  String get to_room_selection {
    return Intl.message(
      'к выбору номера',
      name: 'to_room_selection',
      desc: '',
      args: [],
    );
  }

  /// `подробнее о номере`
  String get room_description {
    return Intl.message(
      'подробнее о номере',
      name: 'room_description',
      desc: '',
      args: [],
    );
  }

  /// `выбрать номер`
  String get choose_number {
    return Intl.message(
      'выбрать номер',
      name: 'choose_number',
      desc: '',
      args: [],
    );
  }

  /// `бронирование`
  String get booking {
    return Intl.message(
      'бронирование',
      name: 'booking',
      desc: '',
      args: [],
    );
  }

  /// `вылет из`
  String get cell1 {
    return Intl.message(
      'вылет из',
      name: 'cell1',
      desc: '',
      args: [],
    );
  }

  /// `страна, город`
  String get cell2 {
    return Intl.message(
      'страна, город',
      name: 'cell2',
      desc: '',
      args: [],
    );
  }

  /// `даты`
  String get cell3 {
    return Intl.message(
      'даты',
      name: 'cell3',
      desc: '',
      args: [],
    );
  }

  /// `кол-во ночей`
  String get cell4 {
    return Intl.message(
      'кол-во ночей',
      name: 'cell4',
      desc: '',
      args: [],
    );
  }

  /// `отель`
  String get cell5 {
    return Intl.message(
      'отель',
      name: 'cell5',
      desc: '',
      args: [],
    );
  }

  /// `номер`
  String get cell6 {
    return Intl.message(
      'номер',
      name: 'cell6',
      desc: '',
      args: [],
    );
  }

  /// `питание`
  String get cell7 {
    return Intl.message(
      'питание',
      name: 'cell7',
      desc: '',
      args: [],
    );
  }

  /// `ночей`
  String get nights {
    return Intl.message(
      'ночей',
      name: 'nights',
      desc: '',
      args: [],
    );
  }

  /// `информация о покупателе`
  String get buyer_info {
    return Intl.message(
      'информация о покупателе',
      name: 'buyer_info',
      desc: '',
      args: [],
    );
  }

  /// `Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту.`
  String get buyer_info_tips {
    return Intl.message(
      'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту.',
      name: 'buyer_info_tips',
      desc: '',
      args: [],
    );
  }

  /// `номер телефона`
  String get phone_number {
    return Intl.message(
      'номер телефона',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `почта`
  String get email {
    return Intl.message(
      'почта',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `имя`
  String get name {
    return Intl.message(
      'имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `фамилия`
  String get surname {
    return Intl.message(
      'фамилия',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `дата рождения`
  String get date_of_birth {
    return Intl.message(
      'дата рождения',
      name: 'date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `гражданство`
  String get citizenship {
    return Intl.message(
      'гражданство',
      name: 'citizenship',
      desc: '',
      args: [],
    );
  }

  /// `номер загранпаспорта`
  String get passport_number {
    return Intl.message(
      'номер загранпаспорта',
      name: 'passport_number',
      desc: '',
      args: [],
    );
  }

  /// `срок действия загранпаспорта`
  String get passport_exp_date {
    return Intl.message(
      'срок действия загранпаспорта',
      name: 'passport_exp_date',
      desc: '',
      args: [],
    );
  }

  /// `оплатить`
  String get pay {
    return Intl.message(
      'оплатить',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Введите действительную почту`
  String get email_invalid {
    return Intl.message(
      'Введите действительную почту',
      name: 'email_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер телефона`
  String get phone_invalid {
    return Intl.message(
      'Введите номер телефона',
      name: 'phone_invalid',
      desc: '',
      args: [],
    );
  }

  /// `введите имя`
  String get name_invalid {
    return Intl.message(
      'введите имя',
      name: 'name_invalid',
      desc: '',
      args: [],
    );
  }

  /// `введите фамилию`
  String get surname_invalid {
    return Intl.message(
      'введите фамилию',
      name: 'surname_invalid',
      desc: '',
      args: [],
    );
  }

  /// `введите дату рождения`
  String get date_of_birth_invalid {
    return Intl.message(
      'введите дату рождения',
      name: 'date_of_birth_invalid',
      desc: '',
      args: [],
    );
  }

  /// `введите гражданство`
  String get citizenship_invalid {
    return Intl.message(
      'введите гражданство',
      name: 'citizenship_invalid',
      desc: '',
      args: [],
    );
  }

  /// `введите номер загранпаспорта`
  String get passport_number_invalid {
    return Intl.message(
      'введите номер загранпаспорта',
      name: 'passport_number_invalid',
      desc: '',
      args: [],
    );
  }

  /// `введите срок действия загранпаспорта`
  String get passport_exp_date_invalid {
    return Intl.message(
      'введите срок действия загранпаспорта',
      name: 'passport_exp_date_invalid',
      desc: '',
      args: [],
    );
  }

  /// `добавить туриста`
  String get add_tourist {
    return Intl.message(
      'добавить туриста',
      name: 'add_tourist',
      desc: '',
      args: [],
    );
  }

  /// `турист`
  String get tourist {
    return Intl.message(
      'турист',
      name: 'tourist',
      desc: '',
      args: [],
    );
  }

  /// `тур`
  String get tour {
    return Intl.message(
      'тур',
      name: 'tour',
      desc: '',
      args: [],
    );
  }

  /// `топливный сбор`
  String get fuel_charge {
    return Intl.message(
      'топливный сбор',
      name: 'fuel_charge',
      desc: '',
      args: [],
    );
  }

  /// `сервисный сбор`
  String get service_charge {
    return Intl.message(
      'сервисный сбор',
      name: 'service_charge',
      desc: '',
      args: [],
    );
  }

  /// `к оплате`
  String get full_price {
    return Intl.message(
      'к оплате',
      name: 'full_price',
      desc: '',
      args: [],
    );
  }

  /// `Заказ оплачен`
  String get paid {
    return Intl.message(
      'Заказ оплачен',
      name: 'paid',
      desc: '',
      args: [],
    );
  }

  /// `супер!`
  String get super_text {
    return Intl.message(
      'супер!',
      name: 'super_text',
      desc: '',
      args: [],
    );
  }

  /// `Ваш заказ принят в работу`
  String get order_succes_text {
    return Intl.message(
      'Ваш заказ принят в работу',
      name: 'order_succes_text',
      desc: '',
      args: [],
    );
  }

  /// `Потверждение заказа `
  String get order_succes_text2 {
    return Intl.message(
      'Потверждение заказа ',
      name: 'order_succes_text2',
      desc: '',
      args: [],
    );
  }

  /// `может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.`
  String get order_succes_text3 {
    return Intl.message(
      'может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
      name: 'order_succes_text3',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
