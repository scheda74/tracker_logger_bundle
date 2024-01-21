# Example

## Getting started

The simplest way to initialize the Loggers is to initialize the instance on app start. This is best done in `main.dart` like so:

```dart
Future<void> main() async {
    // ...

    Log.instance.initialize();
    
    // ...
}
```

Add the plugins you like to the initialize function. As a default it only uses the local logger.

If you are using a zoned guard, you can wrap the initialization around your app runner.

In main.dart use the following inside a `runZonedGuarded`:

```dart
Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Log.instance.initialize(
        matomoOptions: const MatomoOptions(siteId: 69, url: 'your matomo url'),
        sentryConfig: SentryConfig(
          optionsConfiguration: (options) {
            // options.dsn = kDebugMode ? '' : F.sentryKey;
            // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
            // We recommend adjusting this value in production.
            options.tracesSampleRate = 1.0;
          },
          appRunner: () => runApp(
            const AppEntry(),
          ),
        ),
      );
    },
    // This logs to all plugins you specified
    (error, stack) async => Log.instance.logError(
      'Uncaught error in zonedGuarded',
      error: error,
      stackTrace: stack,
    ),
  );
}
```
