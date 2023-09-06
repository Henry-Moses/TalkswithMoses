import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBl1ERTDbu4iR1rvb_mMnG_GNqaiIrcqdI",
            authDomain: "talkswithmoses-d95f2.firebaseapp.com",
            projectId: "talkswithmoses-d95f2",
            storageBucket: "talkswithmoses-d95f2.appspot.com",
            messagingSenderId: "426884302069",
            appId: "1:426884302069:web:e7c19184bccd27722c31bc",
            measurementId: "G-ZY11397LY7"));
  } else {
    await Firebase.initializeApp();
  }
}
