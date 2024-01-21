<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# Flutter Tracker Logger Bundle

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

- Firebase Analytics
- Firebase Crashlytics

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
    // This logs not only to sentry but all other plugins you specified
    (error, stack) async => Log.instance.logError(
      'Uncaught error in zonedGuarded',
      error: error,
      stackTrace: stack,
    ),
  );
}
```

### Firebase Analytics

In order for the plugin to initialize, you need to initialize firebase core. See the [firebase analytics docs](https://firebase.google.com/docs/analytics/get-started?platform=flutter) for more information.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
