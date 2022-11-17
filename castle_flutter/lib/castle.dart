import 'dart:async';

import 'package:castle_flutter_platform_interface/castle_flutter_platform_interface.dart';

class Castle {
  /// private constructor to not allow the object creation from outside.
  Castle._();
  
  static final Castle _instance = Castle._();
  
  /// get the instance of the [Castle].
  static Castle get instance => _instance;
  

  Future<void> configure({required publishableKey, debugLoggingEnabled, maxQueueLimit, flushLimit, useCloudflareApp, baseURLAllowList}) {
    return CastleFlutterPlatform.instance.configure(publishableKey: publishableKey, debugLoggingEnabled: debugLoggingEnabled, maxQueueLimit: maxQueueLimit, flushLimit: flushLimit, useCloudflareApp: useCloudflareApp, baseURLAllowList: baseURLAllowList);
  }
  
  Future<void> userJwt(String userJwt) => CastleFlutterPlatform.instance.userJwt(userJwt);

  Future<void> screen(String name) => CastleFlutterPlatform.instance.screen(name);

  Future<void> custom(String name, Map<String, dynamic>? properties) => CastleFlutterPlatform.instance.custom(name, properties);

  Future<void> flush() => CastleFlutterPlatform.instance.flush();

  Future<bool?> flushIfNeeded(String url) => CastleFlutterPlatform.instance.flushIfNeeded(url);

  Future<void> reset() => CastleFlutterPlatform.instance.reset();

  Future<String?> get createRequestToken => CastleFlutterPlatform.instance.createRequestToken;

  Future<String?> get requestTokenHeaderName => CastleFlutterPlatform.instance.requestTokenHeaderName;

  Future<String?> get userAgent => CastleFlutterPlatform.instance.userAgent;

  Future<int?> get queueSize => CastleFlutterPlatform.instance.queueSize;
}
