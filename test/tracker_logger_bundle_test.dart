import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:matomo_tracker/matomo_tracker.dart';
import 'package:mockito/annotations.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tracker_logger_bundle/tracker_logger_bundle.dart';

// import 'tracker_logger_bundle_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<http.Client>(),
  MockSpec<MatomoTracker>(),
])
void main() {
  // MockClient client = MockClient();
  // MockMatomoTracker matomo = MockMatomoTracker();

  Future<void> initialize() async {
    SharedPreferences.setMockInitialValues({});
    PackageInfo.setMockInitialValues(
      appName: 'appName',
      packageName: 'packageName',
      version: '1.0',
      buildNumber: '2.0',
      buildSignature: 'buildSignature',
    );
    await TrackerLoggerBundle.instance.initialize(
      enableLocalLogger: true,
      matomoOptions: const MatomoOptions(
        url: '',
        siteId: 1,
      ),
      sentryConfig: SentryConfig(
        optionsConfiguration: (options) {
          options.dsn = '';
        },
        appRunner: () => runApp(
          const MaterialApp(
            home: Text('test'),
          ),
        ),
      ),
    );
  }

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    await initialize();
  });

  test('initialize all plugins', () async {
    // Assert
    expect(TrackerLoggerBundle.instance.plugins.length, 3);
  });

  test('log event', () async {
    // Act
    TrackerLoggerBundle.instance.logEvent(
      'test event',
      action: 'test action',
      category: 'test category',
      value: 1,
    );

    // Assert
    expect(TrackerLoggerBundle.instance.plugins.length, 3);
    // verify(TrackerLoggerBundle.instance.logEvent).called(1);
    // for (final plugin in TrackerLoggerBundle.instance.plugins) {
    //   verify(plugin.logEvent).called(1);
    // }
  });
}
