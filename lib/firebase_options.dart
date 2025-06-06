// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD9aGmLc5an76eltfvYIRVtqJQyFUvZTas',
    appId: '1:546614588608:web:fb853b00555c6250cba925',
    messagingSenderId: '546614588608',
    projectId: 'chat-app-314c0',
    authDomain: 'chat-app-314c0.firebaseapp.com',
    storageBucket: 'chat-app-314c0.firebasestorage.app',
    measurementId: 'G-DV3L4WTCVC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCw43faPkDeGYY6Q3DV724PJSwngxJFKxo',
    appId: '1:546614588608:android:2667be674b527cd1cba925',
    messagingSenderId: '546614588608',
    projectId: 'chat-app-314c0',
    storageBucket: 'chat-app-314c0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2R_NLEwVMijC6b5dOFzi4vaGUt4H1_fk',
    appId: '1:546614588608:ios:c6d3db95a8de10b8cba925',
    messagingSenderId: '546614588608',
    projectId: 'chat-app-314c0',
    storageBucket: 'chat-app-314c0.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2R_NLEwVMijC6b5dOFzi4vaGUt4H1_fk',
    appId: '1:546614588608:ios:c6d3db95a8de10b8cba925',
    messagingSenderId: '546614588608',
    projectId: 'chat-app-314c0',
    storageBucket: 'chat-app-314c0.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD9aGmLc5an76eltfvYIRVtqJQyFUvZTas',
    appId: '1:546614588608:web:50cf7143f23e3a05cba925',
    messagingSenderId: '546614588608',
    projectId: 'chat-app-314c0',
    authDomain: 'chat-app-314c0.firebaseapp.com',
    storageBucket: 'chat-app-314c0.firebasestorage.app',
    measurementId: 'G-Z3CY4S56YX',
  );
}
