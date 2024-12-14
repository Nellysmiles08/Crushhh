import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyApR62tndMiVMT2ebA81NkhnezARu6R9Og",
            authDomain: "crush-fc59b.firebaseapp.com",
            projectId: "crush-fc59b",
            storageBucket: "crush-fc59b.appspot.com",
            messagingSenderId: "168953877780",
            appId: "1:168953877780:web:4d7a72d98a83c768d81e01"));
  } else {
    await Firebase.initializeApp();
  }
}
