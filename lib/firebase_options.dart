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
    apiKey: 'AIzaSyBCFe4qafS92gh85lLID_YbyP-yScNdCs0',
    appId: '1:723501812002:web:5cd3229f25e4bbe929fd7b',
    messagingSenderId: '723501812002',
    projectId: 'barber-shop-ec095',
    authDomain: 'barber-shop-ec095.firebaseapp.com',
    storageBucket: 'barber-shop-ec095.appspot.com',
    measurementId: 'G-4SPRT8N169',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSWXUcLpJ8mYV72l17BrI_ipcE_B7F1RM',
    appId: '1:723501812002:android:fc2e9664b924d33b29fd7b',
    messagingSenderId: '723501812002',
    projectId: 'barber-shop-ec095',
    storageBucket: 'barber-shop-ec095.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBILUlwSQ9nDMSDCNZQyXXE0S4ED6yzOWY',
    appId: '1:723501812002:ios:1b066f47b7c83c6629fd7b',
    messagingSenderId: '723501812002',
    projectId: 'barber-shop-ec095',
    storageBucket: 'barber-shop-ec095.appspot.com',
    iosBundleId: 'com.example.barberShop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBILUlwSQ9nDMSDCNZQyXXE0S4ED6yzOWY',
    appId: '1:723501812002:ios:81e78cbeab51860d29fd7b',
    messagingSenderId: '723501812002',
    projectId: 'barber-shop-ec095',
    storageBucket: 'barber-shop-ec095.appspot.com',
    iosBundleId: 'com.example.barberShop.RunnerTests',
  );
}
