@JS('firebase.messaging')
library firebase3.messaging_interop;

import 'package:js/js.dart';
import 'firebase_interop.dart';

@JS('Messaging')
abstract class MessagingJsImpl {
  external PromiseJsImpl deleteToken(String token);
  external PromiseJsImpl<String> getToken();
  //external UnsubscribeJsImpl onMessage(subscriber);
  //external UnsubscribeJsImpl onTokenRefresh(subscriber);
  external PromiseJsImpl requestPermission();
  external void setBackgroundMessageHandler(callback);
  external void useServiceWorker(registration);
}