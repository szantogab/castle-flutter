import 'package:castle_flutter_platform_interface/method_channel_castle_flutter.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class CastleFlutterPlatform extends PlatformInterface {
	CastleFlutterPlatform() : super(token: _token);
	static final Object _token = Object();
	
	/// The default instance of to use.
	static CastleFlutterPlatform _instance = MethodChannelCastleFlutter();
	
	/// The default instance of to use.
	static CastleFlutterPlatform get instance => _instance;
	
	/// Platform-specific plugins should set this with their own platform-specific
	static set instance(CastleFlutterPlatform instance) {
		PlatformInterface.verifyToken(instance, _token);
		_instance = instance;
	}
	
	Future<void> configure({required publishableKey, debugLoggingEnabled, maxQueueLimit, flushLimit, useCloudflareApp, baseURLAllowList});
	
	Future<void> userJwt(String userJwt);
	
	Future<void> screen(String name);
	
	Future<void> custom(String name, Map<String, dynamic>? properties);
	
	Future<void> flush();
	
	Future<bool?> flushIfNeeded(String url);
	
	Future<void> reset();
	
	Future<String?> get createRequestToken;
	
	Future<String?> get requestTokenHeaderName;
	
	Future<String?> get userAgent;
	
	Future<int?> get queueSize;
}