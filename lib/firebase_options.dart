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
    apiKey: 'AIzaSyAbwRnm18bv3OB26vewR9UUvySq4_570_8',
    appId: '1:180418767398:android:0924e42c835c9a0d0bd4e7',
    messagingSenderId: '180418767398',
    projectId: 'app-classroom-bfbcd',
    storageBucket: 'app-classroom-bfbcd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHsQeRo1t1855vTBIQ1rVO9L6QXiVjvRY',
    appId: '1:180418767398:ios:cbefc7edb73726960bd4e7',
    messagingSenderId: '180418767398',
    projectId: 'app-classroom-bfbcd',
    storageBucket: 'app-classroom-bfbcd.appspot.com',
    androidClientId: '180418767398-8cffiv0n5uuo5f3u7mi7cu0ccbqvilvc.apps.googleusercontent.com',
    iosClientId: '180418767398-15k24dsue0cfl10u4n1qjbn50tcopebt.apps.googleusercontent.com',
    iosBundleId: 'com.example.classroomReservation',
  );
}
