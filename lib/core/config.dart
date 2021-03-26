import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:package_info/package_info.dart';

class AppConfig {
  factory AppConfig() {
    return _singleton;
  }

  AppConfig._();

  static final AppConfig _singleton = AppConfig._();

  // ignore: non_constant_identifier_names
  static bool get IS_PRODUCTION =>
      kReleaseMode || ENVIRONMENT.toLowerCase().startsWith('prod');
  // // ignore: non_constant_identifier_names
  // ignore: non_constant_identifier_names
  static String get ENVIRONMENT => env['ENVIRONMENT'] ?? 'dev';

  // ignore: non_constant_identifier_names
  static String get API_ENDPOINT => env['API_URI']!;

  // ignore: non_constant_identifier_names
  static String get TOKEN => env['TOKEN']!;

  // Only for development
  static String get devUsername => env['DEV_USER_NAME']!;
  static String get devPassword => env['DEV_USER_PASSWORD']!;

  static String _os = '';
  // ignore: non_constant_identifier_names
  static String get OS => _os;

  static String _appVersion = '';
  // ignore: non_constant_identifier_names
  static String get APP_VERSION => _appVersion;

  Future load() async {
    await DotEnv.load(fileName: 'assets/.env');

    final deviceInfo = DeviceInfoPlugin();
    var title = '';
    if (!kIsWeb) {
      final packageInfo = await PackageInfo.fromPlatform();
      _appVersion = '${packageInfo.version}+${packageInfo.buildNumber}';

      if (Platform.isAndroid) {
        final di = await deviceInfo.androidInfo;
        title = '${di.model} ${di.product}';
      } else if (Platform.isIOS) {
        final di = await deviceInfo.iosInfo;
        title = '${di.name} ${di.systemName} ${di.systemVersion}';
      }
    }

    debugPrint('DEVICE: $title');
    debugPrint('APP VERSION: $APP_VERSION');
    debugPrint('API ENDPOINT: $API_ENDPOINT');
    debugPrint('TOKEN: $TOKEN');
  }
}
