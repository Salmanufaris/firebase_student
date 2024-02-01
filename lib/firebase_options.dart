// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCdCfN2ddnV4K0JMUTftX1nLrgTDb17kHE',
    appId: '1:685922802983:web:e9a8d171cb7b07fa6a9d02',
    messagingSenderId: '685922802983',
    projectId: 'todo-755f1',
    authDomain: 'todo-755f1.firebaseapp.com',
    storageBucket: 'todo-755f1.appspot.com',
    measurementId: 'G-T82LNTJQ3S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5qWXjSpXeNNxpayIczcQ_z0IdBR6NSik',
    appId: '1:685922802983:android:40598470546f173d6a9d02',
    messagingSenderId: '685922802983',
    projectId: 'todo-755f1',
    storageBucket: 'todo-755f1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBeKQLT0PYI2Vas4rw4_XJTw0RcTL8Fp70',
    appId: '1:685922802983:ios:26a598c52cd416be6a9d02',
    messagingSenderId: '685922802983',
    projectId: 'todo-755f1',
    storageBucket: 'todo-755f1.appspot.com',
    iosBundleId: 'com.example.flutterApplicationTodo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBeKQLT0PYI2Vas4rw4_XJTw0RcTL8Fp70',
    appId: '1:685922802983:ios:568f7b34b68d51f66a9d02',
    messagingSenderId: '685922802983',
    projectId: 'todo-755f1',
    storageBucket: 'todo-755f1.appspot.com',
    iosBundleId: 'com.example.flutterApplicationTodo.RunnerTests',
  );
}
