import 'dart:js_util';

import 'package:castle_flutter_platform_interface/castle_flutter_platform_interface.dart';
import 'package:castle_flutter_web/castle_js.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

class CastleFlutterWeb extends CastleFlutterPlatform {
	late Castle castle;
	
	static void registerWith(Registrar registrar) {
		CastleFlutterPlatform.instance = CastleFlutterWeb();
	}
	
	@override
	Future<void> configure({required publishableKey, debugLoggingEnabled, maxQueueLimit, flushLimit, useCloudflareApp, baseURLAllowList}) async {
		castle = castleJsConfigure(CastleConfigureOptions(pk: publishableKey));
	}
	
	@override
	Future<String?> get createRequestToken async => await promiseToFuture(castle.createRequestToken());
	
	@override
	Future<void> custom(String name, Map<String, dynamic>? properties) {
		throw UnimplementedError();
	}
	
	@override
	Future<void> flush() {
		throw UnimplementedError();
	}
	
	@override
	Future<bool?> flushIfNeeded(String url) {
		throw UnimplementedError();
	}
	
	@override
	Future<int?> get queueSize => throw UnimplementedError();
	
	@override
	Future<String?> get requestTokenHeaderName => throw UnimplementedError();
	
	@override
	Future<void> reset() {
		throw UnimplementedError();
	}
	
	@override
	Future<void> screen(String name) {
		throw UnimplementedError();
	}
	
	@override
	Future<String?> get userAgent => throw UnimplementedError();
	
	@override
	Future<void> userJwt(String userJwt) {
		throw UnimplementedError();
	}
}