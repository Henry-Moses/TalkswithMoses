import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCb40tNx9NBe5xcw5_pfy5KMCAJpcDAnSc",
            authDomain: "talkswithmoses-7f14c.firebaseapp.com",
            projectId: "talkswithmoses-7f14c",
            storageBucket: "talkswithmoses-7f14c.appspot.com",
            messagingSenderId: "88121706650",
            appId: "1:88121706650:web:7ea1c55bca69a053983723",
            measurementId: "G-4PSVXMRM4M"));
  } else {
    await Firebase.initializeApp();
  }
}
