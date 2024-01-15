import 'package:dio/dio.dart';

class Validator {
  static Future<String> validateUrl(String url) async {
    const urlPlaceholder =
        'https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png?20210219185637';
    final dio = Dio();
    try {
      final res = await dio.get(url);
      if (res.statusCode == 200) {
        return url;
      } else {
        return urlPlaceholder;
      }
    } catch (e) {
      print(e);
      return urlPlaceholder;
    }
  }

  static validateEmail(String text) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(text);
  }

  static validateTextFieldText(String text) {
    return text.length > 3;
  }
}
