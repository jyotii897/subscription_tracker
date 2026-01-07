import 'package:hive_flutter/hive_flutter.dart';
class UserRepository {
  final Box box;

  UserRepository({required this.box});

  Future<void> setWelcomeViewed(bool viewed) async {
    await box.put('welcomeViewed', viewed);
  }

  bool get isViewed => box.get('welcomeViewed', defaultValue: false);

  Future<void> setDarkMode(bool isDarkMode) async {
    await box.put('isDarkMode', isDarkMode);
  }

  bool get isDark => box.get('isDarkMode', defaultValue: false);
}
