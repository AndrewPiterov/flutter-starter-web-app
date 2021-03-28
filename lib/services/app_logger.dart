import 'package:flutter/foundation.dart';

class AppLogger {
  void success(String message) {
    debugPrint(('✅ $message'));
  }

  Future getxLog(String text, {bool isError = false}) async {
    if (isError) {
      await Future.microtask(() => debugPrint(('** ERROR ** $text')));
      return;
    }

    await Future.microtask(() => debugPrint('-> $text'));
  }
}
