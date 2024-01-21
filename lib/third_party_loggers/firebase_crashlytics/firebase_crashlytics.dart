import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:tracker_logger_bundle/models/log_level.dart';

import '../../models/plugin.dart';

class FirebaseCrashlyticsLogger extends Plugin {
  late FirebaseCrashlytics _instance;

  FirebaseCrashlyticsLogger() : super(name: 'FirebaseAnalytics') {
    _instance = FirebaseCrashlytics.instance;
  }

  @override
  void logError(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    LogLevel level = LogLevel.error,
  }) {
    switch (level) {
      case LogLevel.debug:
        return;
      case LogLevel.info:
        _instance.log(message);
        break;
      case LogLevel.warning:
        _instance.log(message);
        break;
      case LogLevel.error:
        _instance.recordError(
          error,
          stackTrace,
          reason: message,
          information: [level.name],
          fatal: false,
        );
        break;
      case LogLevel.exception:
        _instance.recordError(
          error.toString(),
          stackTrace,
          reason: message,
          information: [level.name],
          fatal: true,
        );
        break;
    }
  }

  @override
  void logEvent(
    String name, {
    String? category,
    String? action,
    int? value,
    LogLevel level = LogLevel.info,
  }) {
    final stringify =
        '$name | category: $category, action: $action, value: $value ${level.name}';
    _instance.log(stringify);
  }
}
