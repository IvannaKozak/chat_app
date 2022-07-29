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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9hYoRVF5ss20it5NMwYLm9dVq6ob3whQ',
    appId: '1:1069820982777:android:40a3777a7b1bae43ebf928',
    messagingSenderId: '1069820982777',
    projectId: 'chatapp-633bb',
    databaseURL: 'https://chatapp-633bb-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chatapp-633bb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBiSocPgs5L_TQLovZq8VVrVUAi3sgIhto',
    appId: '1:1069820982777:ios:3ec7632c29748aa5ebf928',
    messagingSenderId: '1069820982777',
    projectId: 'chatapp-633bb',
    databaseURL: 'https://chatapp-633bb-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chatapp-633bb.appspot.com',
    iosClientId: '1069820982777-5grkksvt3fic08vmphn2e234an17m7b5.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
