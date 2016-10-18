import 'dart:async';

import 'interop/messaging_interop.dart';
import 'js.dart';
import 'utils.dart';

/// The Messaging service interface.
///
/// See: <https://firebase.google.com/docs/reference/js/firebase.messaging.Messaging>
class Messaging extends JsObjectWrapper<MessagingJsImpl> {
  /// Creates a new Messaging from a [jsObject].
  Messaging.fromJsObject(MessagingJsImpl jsObject)
      : super.fromJsObject(jsObject);

  Future deleteToken(String token) =>
      handleThenable(jsObject.deleteToken(token));

  Future<String> getToken() => handleThenable(jsObject.getToken());

  Future requestPermission() => handleThenable(jsObject.requestPermission());

  // TODO
  void setBackgroundMessageHandler(callback) {

  }

  // TODO
  void useServiceWorker(registration) {

  }
}
