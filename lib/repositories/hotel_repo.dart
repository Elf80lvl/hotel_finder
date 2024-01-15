import 'dart:convert';
import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:app_test_vacancy/models/room_info_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class HotelRepo {
  //*false to read data from network
  static bool isLocal = false;
  //*to simulate the server delay
  static int delayInMiliseconds = 500;

  static Future getHotelInfo() async {
    if (isLocal) {
      await Future.delayed(Duration(milliseconds: delayInMiliseconds));
      final String response =
          await rootBundle.loadString('assets/local_data/hotel.json');
      final data = await json.decode(response);
      return HotelInfoModel.fromJson(data);
    } else {
      try {
        final dio = Dio();
        // const String url =
        //     'https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3';
        const String url =
            'https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473';
        final response = await dio.get(url);
        return HotelInfoModel.fromRawJson(response.toString());
      } catch (e) {
        print(e);
      }
    }
  }

  static Future getRoomInfo() async {
    if (isLocal) {
      await Future.delayed(Duration(milliseconds: delayInMiliseconds));
      final String response =
          await rootBundle.loadString('assets/local_data/room.json');
      final data = await json.decode(response);
      return RoomInfoModel.fromJson(data);
    } else {
      try {
        final dio = Dio();
        const String url =
            // 'https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd';
            'https://run.mocky.io/v3/8b532701-709e-4194-a41c-1a903af00195';
        final response = await dio.get(url);
        return RoomInfoModel.fromRawJson(response.toString());
      } catch (e) {
        // print(e);
      }
    }
  }

  static Future getBookingInfo() async {
    if (isLocal) {
      await Future.delayed(Duration(milliseconds: delayInMiliseconds));
      final String response =
          await rootBundle.loadString('assets/local_data/booking.json');
      final data = await json.decode(response);
      return BookingInfoModel.fromJson(data);
    } else {
      try {
        final dio = Dio();
        const String url =
            // 'https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8';
            'https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff';
        final response = await dio.get(url);
        return BookingInfoModel.fromRawJson(response.toString());
      } catch (e) {
        // print(e);
      }
    }
  }
}
