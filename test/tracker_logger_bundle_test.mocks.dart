// Mocks generated by Mockito 5.4.4 from annotations
// in tracker_logger_bundle/test/tracker_logger_bundle_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:collection' as _i5;
import 'dart:convert' as _i9;
import 'dart:typed_data' as _i11;
import 'dart:ui' as _i4;

import 'package:device_info_plus/device_info_plus.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:http/http.dart' as _i2;
import 'package:matomo_tracker/src/campaign.dart' as _i20;
import 'package:matomo_tracker/src/content.dart' as _i24;
import 'package:matomo_tracker/src/dispatch_settings.dart' as _i14;
import 'package:matomo_tracker/src/event_info.dart' as _i22;
import 'package:matomo_tracker/src/local_storage/local_storage.dart' as _i13;
import 'package:matomo_tracker/src/logger/log_record.dart' as _i17;
import 'package:matomo_tracker/src/logger/logger.dart' as _i3;
import 'package:matomo_tracker/src/matomo.dart' as _i12;
import 'package:matomo_tracker/src/matomo_dispatcher.dart' as _i7;
import 'package:matomo_tracker/src/performance_info.dart' as _i21;
import 'package:matomo_tracker/src/platform_info/platform_info.dart' as _i16;
import 'package:matomo_tracker/src/tracking_order_item.dart' as _i23;
import 'package:matomo_tracker/src/visitor.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i10;
import 'package:package_info_plus/package_info_plus.dart' as _i15;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0 extends _i1.SmartFake implements _i2.Response {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_1 extends _i1.SmartFake
    implements _i2.StreamedResponse {
  _FakeStreamedResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLogger_2 extends _i1.SmartFake implements _i3.Logger {
  _FakeLogger_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSize_3 extends _i1.SmartFake implements _i4.Size {
  _FakeSize_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeQueue_4<E> extends _i1.SmartFake implements _i5.Queue<E> {
  _FakeQueue_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTimer_5 extends _i1.SmartFake implements _i6.Timer {
  _FakeTimer_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMatomoDispatcher_6 extends _i1.SmartFake
    implements _i7.MatomoDispatcher {
  _FakeMatomoDispatcher_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeVisitor_7 extends _i1.SmartFake implements _i8.Visitor {
  _FakeVisitor_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i2.Client {
  @override
  _i6.Future<_i2.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i2.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i2.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i9.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i2.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i9.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i2.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i9.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i2.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i9.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<String>.value(_i10.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<String>.value(_i10.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<String>);

  @override
  _i6.Future<_i11.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i11.Uint8List>.value(_i11.Uint8List(0)),
        returnValueForMissingStub:
            _i6.Future<_i11.Uint8List>.value(_i11.Uint8List(0)),
      ) as _i6.Future<_i11.Uint8List>);

  @override
  _i6.Future<_i2.StreamedResponse> send(_i2.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i6.Future<_i2.StreamedResponse>.value(_FakeStreamedResponse_1(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.StreamedResponse>.value(_FakeStreamedResponse_1(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i6.Future<_i2.StreamedResponse>);

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [MatomoTracker].
///
/// See the documentation for Mockito's code generation for more information.
class MockMatomoTracker extends _i1.Mock implements _i12.MatomoTracker {
  @override
  _i3.Logger get log => (super.noSuchMethod(
        Invocation.getter(#log),
        returnValue: _FakeLogger_2(
          this,
          Invocation.getter(#log),
        ),
        returnValueForMissingStub: _FakeLogger_2(
          this,
          Invocation.getter(#log),
        ),
      ) as _i3.Logger);

  @override
  String get siteId => (super.noSuchMethod(
        Invocation.getter(#siteId),
        returnValue: _i10.dummyValue<String>(
          this,
          Invocation.getter(#siteId),
        ),
        returnValueForMissingStub: _i10.dummyValue<String>(
          this,
          Invocation.getter(#siteId),
        ),
      ) as String);

  @override
  set siteId(String? _siteId) => super.noSuchMethod(
        Invocation.setter(
          #siteId,
          _siteId,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get attachLastScreenInfo => (super.noSuchMethod(
        Invocation.getter(#attachLastScreenInfo),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  set attachLastScreenInfo(bool? _attachLastScreenInfo) => super.noSuchMethod(
        Invocation.setter(
          #attachLastScreenInfo,
          _attachLastScreenInfo,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set userAgent(String? _userAgent) => super.noSuchMethod(
        Invocation.setter(
          #userAgent,
          _userAgent,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<String, String> get customHeaders => (super.noSuchMethod(
        Invocation.getter(#customHeaders),
        returnValue: <String, String>{},
        returnValueForMissingStub: <String, String>{},
      ) as Map<String, String>);

  @override
  set customHeaders(Map<String, String>? _customHeaders) => super.noSuchMethod(
        Invocation.setter(
          #customHeaders,
          _customHeaders,
        ),
        returnValueForMissingStub: null,
      );

  @override
  String get contentBase => (super.noSuchMethod(
        Invocation.getter(#contentBase),
        returnValue: _i10.dummyValue<String>(
          this,
          Invocation.getter(#contentBase),
        ),
        returnValueForMissingStub: _i10.dummyValue<String>(
          this,
          Invocation.getter(#contentBase),
        ),
      ) as String);

  @override
  set contentBase(String? _contentBase) => super.noSuchMethod(
        Invocation.setter(
          #contentBase,
          _contentBase,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Size get screenResolution => (super.noSuchMethod(
        Invocation.getter(#screenResolution),
        returnValue: _FakeSize_3(
          this,
          Invocation.getter(#screenResolution),
        ),
        returnValueForMissingStub: _FakeSize_3(
          this,
          Invocation.getter(#screenResolution),
        ),
      ) as _i4.Size);

  @override
  set screenResolution(_i4.Size? _screenResolution) => super.noSuchMethod(
        Invocation.setter(
          #screenResolution,
          _screenResolution,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Queue<Map<String, String>> get queue => (super.noSuchMethod(
        Invocation.getter(#queue),
        returnValue: _FakeQueue_4<Map<String, String>>(
          this,
          Invocation.getter(#queue),
        ),
        returnValueForMissingStub: _FakeQueue_4<Map<String, String>>(
          this,
          Invocation.getter(#queue),
        ),
      ) as _i5.Queue<Map<String, String>>);

  @override
  set queue(_i5.Queue<Map<String, String>>? _queue) => super.noSuchMethod(
        Invocation.setter(
          #queue,
          _queue,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Timer get dequeueTimer => (super.noSuchMethod(
        Invocation.getter(#dequeueTimer),
        returnValue: _FakeTimer_5(
          this,
          Invocation.getter(#dequeueTimer),
        ),
        returnValueForMissingStub: _FakeTimer_5(
          this,
          Invocation.getter(#dequeueTimer),
        ),
      ) as _i6.Timer);

  @override
  set dequeueTimer(_i6.Timer? _dequeueTimer) => super.noSuchMethod(
        Invocation.setter(
          #dequeueTimer,
          _dequeueTimer,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set pingTimer(_i6.Timer? _pingTimer) => super.noSuchMethod(
        Invocation.setter(
          #pingTimer,
          _pingTimer,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.MatomoDispatcher get dispatcher => (super.noSuchMethod(
        Invocation.getter(#dispatcher),
        returnValue: _FakeMatomoDispatcher_6(
          this,
          Invocation.getter(#dispatcher),
        ),
        returnValueForMissingStub: _FakeMatomoDispatcher_6(
          this,
          Invocation.getter(#dispatcher),
        ),
      ) as _i7.MatomoDispatcher);

  @override
  String get url => (super.noSuchMethod(
        Invocation.getter(#url),
        returnValue: _i10.dummyValue<String>(
          this,
          Invocation.getter(#url),
        ),
        returnValueForMissingStub: _i10.dummyValue<String>(
          this,
          Invocation.getter(#url),
        ),
      ) as String);

  @override
  _i8.Visitor get visitor => (super.noSuchMethod(
        Invocation.getter(#visitor),
        returnValue: _FakeVisitor_7(
          this,
          Invocation.getter(#visitor),
        ),
        returnValueForMissingStub: _FakeVisitor_7(
          this,
          Invocation.getter(#visitor),
        ),
      ) as _i8.Visitor);

  @override
  bool get initialized => (super.noSuchMethod(
        Invocation.getter(#initialized),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  bool get optOut => (super.noSuchMethod(
        Invocation.getter(#optOut),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  bool get cookieless => (super.noSuchMethod(
        Invocation.getter(#cookieless),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void setUrl(String? newUrl) => super.noSuchMethod(
        Invocation.method(
          #setUrl,
          [newUrl],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setVisitorUserId(String? uid) => super.noSuchMethod(
        Invocation.method(
          #setVisitorUserId,
          [uid],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<void> setOptOut({required bool? optOut}) => (super.noSuchMethod(
        Invocation.method(
          #setOptOut,
          [],
          {#optOut: optOut},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  void setCookieless({
    required bool? cookieless,
    _i13.LocalStorage? localStorage,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #setCookieless,
          [],
          {
            #cookieless: cookieless,
            #localStorage: localStorage,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<void> initialize({
    required String? siteId,
    required String? url,
    bool? newVisit = true,
    String? visitorId,
    String? uid,
    String? contentBaseUrl,
    _i14.DispatchSettings? dispatchSettings =
        const _i14.DispatchSettings.nonPersistent(),
    Duration? pingInterval = const Duration(seconds: 30),
    String? tokenAuth,
    _i13.LocalStorage? localStorage,
    _i15.PackageInfo? packageInfo,
    _i16.PlatformInfo? platformInfo,
    bool? cookieless = false,
    _i17.Level? verbosityLevel = _i17.Level.off,
    Map<String, String>? customHeaders = const {},
    String? userAgent,
    bool? attachLastScreenInfo = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #initialize,
          [],
          {
            #siteId: siteId,
            #url: url,
            #newVisit: newVisit,
            #visitorId: visitorId,
            #uid: uid,
            #contentBaseUrl: contentBaseUrl,
            #dispatchSettings: dispatchSettings,
            #pingInterval: pingInterval,
            #tokenAuth: tokenAuth,
            #localStorage: localStorage,
            #packageInfo: packageInfo,
            #platformInfo: platformInfo,
            #cookieless: cookieless,
            #verbosityLevel: verbosityLevel,
            #customHeaders: customHeaders,
            #userAgent: userAgent,
            #attachLastScreenInfo: attachLastScreenInfo,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<String?> getUserAgent({_i18.DeviceInfoPlugin? deviceInfoPlugin}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUserAgent,
          [],
          {#deviceInfoPlugin: deviceInfoPlugin},
        ),
        returnValue: _i6.Future<String?>.value(),
        returnValueForMissingStub: _i6.Future<String?>.value(),
      ) as _i6.Future<String?>);

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void pause() => super.noSuchMethod(
        Invocation.method(
          #pause,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void resume() => super.noSuchMethod(
        Invocation.method(
          #resume,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<void> dispatchActions() => (super.noSuchMethod(
        Invocation.method(
          #dispatchActions,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  void dropActions() => super.noSuchMethod(
        Invocation.method(
          #dropActions,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackPageView({
    required _i19.BuildContext? context,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
    _i21.PerformanceInfo? performanceInfo,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackPageView,
          [],
          {
            #context: context,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
            #performanceInfo: performanceInfo,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackPageViewWithName({
    required String? actionName,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
    _i21.PerformanceInfo? performanceInfo,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackPageViewWithName,
          [],
          {
            #actionName: actionName,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
            #performanceInfo: performanceInfo,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackGoal({
    required int? id,
    double? revenue,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackGoal,
          [],
          {
            #id: id,
            #revenue: revenue,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackEvent({
    required _i22.EventInfo? eventInfo,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackEvent,
          [],
          {
            #eventInfo: eventInfo,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackDimensions({
    required Map<String, String>? dimensions,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackDimensions,
          [],
          {
            #dimensions: dimensions,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackSearch({
    required String? searchKeyword,
    String? searchCategory,
    int? searchCount,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackSearch,
          [],
          {
            #searchKeyword: searchKeyword,
            #searchCategory: searchCategory,
            #searchCount: searchCount,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackCartUpdate({
    List<_i23.TrackingOrderItem>? trackingOrderItems,
    num? subTotal,
    num? taxAmount,
    num? shippingCost,
    num? discountAmount,
    double? grandTotal,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackCartUpdate,
          [],
          {
            #trackingOrderItems: trackingOrderItems,
            #subTotal: subTotal,
            #taxAmount: taxAmount,
            #shippingCost: shippingCost,
            #discountAmount: discountAmount,
            #grandTotal: grandTotal,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackOrder({
    required String? id,
    required double? revenue,
    List<_i23.TrackingOrderItem>? trackingOrderItems,
    num? subTotal,
    num? taxAmount,
    num? shippingCost,
    num? discountAmount,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackOrder,
          [],
          {
            #id: id,
            #revenue: revenue,
            #trackingOrderItems: trackingOrderItems,
            #subTotal: subTotal,
            #taxAmount: taxAmount,
            #shippingCost: shippingCost,
            #discountAmount: discountAmount,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackOutlink({
    required String? link,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackOutlink,
          [],
          {
            #link: link,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackContentImpression({
    required _i24.Content? content,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
    bool? newVisit,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackContentImpression,
          [],
          {
            #content: content,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
            #newVisit: newVisit,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void trackContentInteraction({
    required _i24.Content? content,
    required String? interaction,
    String? pvId,
    String? path,
    _i20.Campaign? campaign,
    Map<String, String>? dimensions,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #trackContentInteraction,
          [],
          {
            #content: content,
            #interaction: interaction,
            #pvId: pvId,
            #path: path,
            #campaign: campaign,
            #dimensions: dimensions,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void validateDimension(Map<String, String>? dimensions) => super.noSuchMethod(
        Invocation.method(
          #validateDimension,
          [dimensions],
        ),
        returnValueForMissingStub: null,
      );
}
