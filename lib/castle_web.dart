@JS("Castle")
library castle.browser.js;

import 'dart:async';
import 'dart:html';

import 'package:js/js.dart';

@JS('configure')
external Castle castleJsConfigure(CastleConfigureOptions pk);


// Calls invoke JavaScript `JSON.stringify(obj)`.
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