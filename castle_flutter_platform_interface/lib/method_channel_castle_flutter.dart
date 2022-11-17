import 'package:castle_flutter_platform_interface/castle_flutter_platform_interface.dart';
import 'package:flutter/services.dart';

/// An implementation of [CastleFlutterPlatform] that uses method channels.
class MethodChannelCastleFlutter extends CastleFlutterPlatform {
  static const MethodChannel _channel = const MethodChannel('castle');

  @override
  Future<void> configure({required publishableKey, debugLoggingEnabled, maxQueueLimit, flushLimit, useCloudflareApp, baseURLAllowList}) async {
    await _channel.invokeMethod('configure', <String, dynamic>{
      'publishableKey': publishableKey,
      'debugLoggingEnabled': debugLoggingEnabled,
      'maxQueueLimit': maxQueueLimit,
      'flushLimit': flushLimit,
      'baseURLAllowList': baseURLAllowList,
    });
  }

  @override
  Future<void> userJwt(String userJwt) async {
    await _channel.invokeMethod('userJwt', <String, dynamic>{
      'userJwt': userJwt,
    });
  }

  @override
  Future<void> screen(String name) async {
    await _channel.invokeMethod('screen', <String, dynamic>{
      'name': name,
    });
  }

  @override
  Future<void> custom(String name, Map<String, dynamic>? properties) async {
    await _channel.invokeMethod('custom', <String, dynamic>{
      'name': name,
      'properties': properties,
    });
  }

  @override
  Future<void> flush() async {
    await _channel.invokeMethod('flush');
  }

  @override
  Future<bool?> flushIfNeeded(String url) async {
    final bool? flushIfNeeded = await _channel.invokeMethod('flushIfNeeded', <String, dynamic>{
      'url': url,
    });
    return flushIfNeeded;
  }

  @override
  Future<void> reset() async {
    await _channel.invokeMethod('reset');
  }

  @override
  Future<String?> get createRequestToken async {
    final String? token = await _channel.invokeMethod('createRequestToken');
    return token;
  }

  @override
  Future<String?> get requestTokenHeaderName async {
    final String? requestTokenHeaderName = await _channel.invokeMethod('requestTokenHeaderName');
    return requestTokenHeaderName;
  }

  @override
  Future<String?> get userAgent async {
    final String? userAgent = await _channel.invokeMethod('userAgent');
    return userAgent;
  }

  @override
  Future<int?> get queueSize async {
    final int? queueSize = await _channel.invokeMethod('queueSize');
    return queueSize;
  }
}
