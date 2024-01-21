import 'package:logger/logger.dart';

import '../../models/log_level.dart';
import '../../models/plugin.dart';

/// Local logger for debugging purposes. Uses [logger package](https://pub.dev/packages/logger) under the hood.
/// logger.t("Trace log");
/// logger.d("Debug log");
/// logger.i("Info log");
/// logger.w("Warning log");
/// logger.e("Error log", error: 'Test Error');
/// logger.f("What a fatal log", error: error, stackTrace: stackTrace);
class LocalLogger extends Plugin {
  late Logger _logger;

  LocalLogger() : super(name: 'LocalLogger') {
    _logger = Logger();
  }

  @override
  void logError(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    LogLevel level = LogLevel.error,
  }) {
    _logger.e('${level.name} $message', error: error, stackTrace: stackTrace);
  }

  @override
  void logEvent(
    String name, {
    String? category,
    String? action,
    int? value,
    LogLevel level = LogLevel.info,
  }) {
    String event = '[EVENT]${level.name} $name';

    if (category != null) {
      event += ' | category: $category';
    }
    if (action != null) {
      event += ' | action: $action';
    }
    if (value != null) {
      event += ' | value: $value';
    }

    _logger.i(event);
  }

  void logLocal(String message) {
    _logger.d('[LOCAL]${LogLevel.debug} $message');
  }
}
