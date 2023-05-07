import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC2t0RmANBVy8FllU9k_U-gQhmKRjM3rOw",
            authDomain: "tudoflix-c60d7.firebaseapp.com",
            projectId: "tudoflix-c60d7",
            storageBucket: "tudoflix-c60d7.appspot.com",
            messagingSenderId: "456589277103",
            appId: "1:456589277103:web:5f35af27b0b3c33bd4215a"));
  } else {
    await Firebase.initializeApp();
  }
}
