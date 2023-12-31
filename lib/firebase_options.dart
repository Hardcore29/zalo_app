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
    apiKey: 'AIzaSyDJAOH22TrpovC_E9gpI0TlaiMuc02WvFA',
    appId: '1:857978359177:web:fbe4932f352507ac536558',
    messagingSenderId: '857978359177',
    projectId: 'chatapp-2bc0b',
    authDomain: 'chatapp-2bc0b.firebaseapp.com',
    databaseURL: 'https://chatapp-2bc0b-default-rtdb.firebaseio.com',
    storageBucket: 'chatapp-2bc0b.appspot.com',
    measurementId: 'G-ZGVZK7G06B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBr63dkOD4uo_NI39t92a13J5WlGkeI1-M',
    appId: '1:857978359177:android:1a4c826a64f6fa23536558',
    messagingSenderId: '857978359177',
    projectId: 'chatapp-2bc0b',
    databaseURL: 'https://chatapp-2bc0b-default-rtdb.firebaseio.com',
    storageBucket: 'chatapp-2bc0b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKl30ZWeIFDAAPchKzJCofIybc8tItPGw',
    appId: '1:857978359177:ios:680d3a879247eea3536558',
    messagingSenderId: '857978359177',
    projectId: 'chatapp-2bc0b',
    databaseURL: 'https://chatapp-2bc0b-default-rtdb.firebaseio.com',
    storageBucket: 'chatapp-2bc0b.appspot.com',
    iosBundleId: 'com.example.zaloApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDKl30ZWeIFDAAPchKzJCofIybc8tItPGw',
    appId: '1:857978359177:ios:7f8e22501aad05ff536558',
    messagingSenderId: '857978359177',
    projectId: 'chatapp-2bc0b',
    databaseURL: 'https://chatapp-2bc0b-default-rtdb.firebaseio.com',
    storageBucket: 'chatapp-2bc0b.appspot.com',
    iosBundleId: 'com.example.zaloApp.RunnerTests',
  );
}
