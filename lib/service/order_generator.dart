import 'dart:math';

class OrderGenerator {
  static String generate() {
    return Random().nextInt(999999).toString();
  }
}
