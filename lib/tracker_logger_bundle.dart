library tracker_logger_bundle;

import 'models/log_level.dart';
import 'models/plugin.dart';
import 'third_party_loggers/firebase_analytics/firebase_analytics.dart';
import 'third_party_loggers/firebase_crashlytics/firebase_crashlytics.dart';
import 'third_party_loggers/local/local_logger.dart';
import 'third_party_loggers/matomo/matomo_logger.dart';
import 'third_party_loggers/sentry/sentry_logger.dart' as sentry;

export 'models/log_level.dart';
export 'third_party_loggers/matomo/matomo_logger.dart';
export 'third_party_loggers/sentry/sentry_logger.dart';

typedef Log = TrackerLoggerBundle;

class TrackerLoggerBundle extends Plugin {
  List<Plugin> plugins = [];
  LocalLogger? _localLoggerInstance;

  TrackerLoggerBundle._internal() : super(name: 'All Loggers');

  static final TrackerLoggerBundle _instance = TrackerLoggerBundle._internal();
  static TrackerLoggerBundle get instance => _instance;

  Future<void> initialize({
    MatomoOptions? matomoOptions,
    sentry.SentryConfig? sentryConfig,
    bool enableLocalLogger = true,
    bool enableFirebaseAnalytics = false,
    bool enableFirebaseCrashlytics = false,
  }) async {
    if (enableLocalLogger) {
      final instance = LocalLogger();
      plugins.add(instance);
      _localLoggerInstance = instance;
      _localLoggerInstance?.logLocal('Initialized local logger');
    }

    if (matomoOptions != null) {
      final matomo = MatomoLogger(options: matomoOptions);
      await matomo.initialize();
      plugins.add(matomo);
      _localLoggerInstance?.logLocal('Initialized matomo tracker');
    }

    if (sentryConfig != null) {
      plugins.add(sentry.SentryLogger(config: sentryConfig));
      _localLoggerInstance?.logLocal('Initialized sentry');
    }

    if (enableFirebaseAnalytics) {
      plugins.add(FirebaseAnalyticsLogger());
      _localLoggerInstance?.logLocal('Initialized FirebaseAnalytics logger');
    }

    if (enableFirebaseCrashlytics) {
      plugins.add(FirebaseCrashlyticsLogger());
      _localLoggerInstance?.logLocal('Initialized FirebaseCrashlytics logger');
    }
  }

  @override
  void logError(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    LogLevel level = LogLevel.error,
  }) {
    for (final plugin in plugins) {
      plugin.logError(
        message,
        error: error,
        stackTrace: stackTrace,
        level: level,
      );
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
    for (final plugin in plugins) {
      plugin.logEvent(
        name,
        category: category,
        action: action,
        value: value,
        level: level,
      );
    }
  }

  void logLocal(String message) {
    if (_localLoggerInstance == null) {
      throw Exception('Local logger is not initialized');
    }
    _localLoggerInstance?.logLocal(message);
  }

  List<String> getActiveTrackerNames() {
    return plugins.map((t) => t.name).toList();
  }
}
