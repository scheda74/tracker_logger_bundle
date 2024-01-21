import 'package:flutter/foundation.dart';
import 'package:matomo_tracker/matomo_tracker.dart';
// ignore: implementation_imports
import 'package:matomo_tracker/src/platform_info/platform_info.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../models/log_level.dart';
import '../../models/plugin.dart';

class MatomoOptions {
  final int siteId;
  final String url;
  final bool newVisit;
  final String? visitorId;
  final String? uid;
  final String? contentBaseUrl;
  final DispatchSettings dispatchSettings;
  final Duration? pingInterval;
  final String? tokenAuth;
  final LocalStorage? localStorage;
  final PackageInfo? packageInfo;
  final PlatformInfo? platformInfo;
  final bool cookieless;
  final Level verbosityLevel;
  final Map<String, String> customHeaders;
  final String? userAgent;
  final bool attachLastScreenInfo;

  const MatomoOptions({
    required this.siteId,
    required this.url,
    this.newVisit = true,
    this.visitorId,
    this.uid,
    this.contentBaseUrl,
    this.dispatchSettings = const DispatchSettings.nonPersistent(),
    this.pingInterval = const Duration(seconds: 30),
    this.tokenAuth,
    this.localStorage,
    this.packageInfo,
    this.platformInfo,
    this.cookieless = false,
    this.verbosityLevel = Level.off,
    this.customHeaders = const {},
    this.userAgent,
    this.attachLastScreenInfo = true,
  });
}

class MatomoLogger extends Plugin {
  MatomoLogger({required MatomoOptions options}) : super(name: 'MatomoLogger') {
    initialize(options);
  }

  Future<void> initialize(MatomoOptions options) async {
    debugPrint(
      'Initializing Matomo for ${options.url} with siteId ${options.siteId} and verbosityLevel ${options.verbosityLevel}...',
    );
    MatomoTracker.instance.initialize(
      siteId: options.siteId,
      url: options.url,
      newVisit: options.newVisit,
      visitorId: options.visitorId,
      uid: options.uid,
      contentBaseUrl: options.contentBaseUrl,
      dispatchSettings: options.dispatchSettings,
      pingInterval: options.pingInterval,
      tokenAuth: options.tokenAuth,
      localStorage: options.localStorage,
      packageInfo: options.packageInfo,
      platformInfo: options.platformInfo,
      cookieless: options.cookieless,
      verbosityLevel: options.verbosityLevel,
      customHeaders: options.customHeaders,
      userAgent: options.userAgent,
      attachLastScreenInfo: options.attachLastScreenInfo,
    );
  }

  @override
  void logError(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    LogLevel level = LogLevel.error,
  }) {
    if (level == LogLevel.debug) {
      return;
    }
    MatomoTracker.instance.trackEvent(
      eventInfo: EventInfo(
        category: 'error',
        name: error.toString(),
        action: stackTrace.toString(),
      ),
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
    if (level == LogLevel.debug) {
      return;
    }
    MatomoTracker.instance.trackEvent(
      eventInfo: EventInfo(
        name: name,
        category: category ?? '-',
        action: action ?? '-',
        value: value,
      ),
    );
  }
}
