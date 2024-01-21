import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:tracker_logger_bundle/models/log_level.dart';

import '../../models/plugin.dart';

class FirebaseAnalyticsLogger extends Plugin {
  late FirebaseAnalytics _instance;

  FirebaseAnalyticsLogger() : super(name: 'FirebaseAnalytics') {
    _instance = FirebaseAnalytics.instance;
  }

  @override
  void logError(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    LogLevel level = LogLevel.error,
  }) {
    _instance.logEvent(
      name: name,
      parameters: {
        'message': message,
        'error': error.toString(),
        'stackTrace': stackTrace.toString(),
        'level': level.name,
      },
    );
  }

  @override
  void logEvent(
    String name, {
    String? category,
    String? action,
    int? value,
    LogLevel level = LogLevel.info,
  }) {
    _instance.logEvent(
      name: name,
      parameters: {
        'category': category,
        'action': action,
        'value': value,
        'level': level.name,
      },
    );
  }
}
