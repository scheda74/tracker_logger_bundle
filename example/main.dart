import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tracker_logger_bundle/tracker_logger_bundle.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Log.instance.initialize(
        matomoOptions:
            const MatomoOptions(siteId: '69', url: 'your-matomo-url'),
        sentryConfig: SentryConfig(
          optionsConfiguration: (options) {
            options.dsn = '';
            // options.dsn = kDebugMode ? '' : F.sentryKey;
            // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
            // We recommend adjusting this value in production.
            options.tracesSampleRate = 1.0;
          },
          appRunner: () => runApp(
            const MaterialApp(),
          ),
        ),
      );
    },
    (error, stack) async => Log.instance.logError(
      'Uncaught error in zonedGuarded',
      error: error,
      stackTrace: stack,
    ),
  );
}
