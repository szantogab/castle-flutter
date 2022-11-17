@JS("Castle")
library castle.browser.js;

import 'package:flutter/services.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

@JS('configure')
external Castle castleJsConfigure(CastleConfigureOptions pk);

@JS()
class Castle {
	external dynamic createRequestToken();
}


@JS()
@anonymous
class CastleConfigureOptions {
	external String get pk;
	
	// Must have an unnamed factory constructor with named arguments.
	external factory CastleConfigureOptions({String pk});
}