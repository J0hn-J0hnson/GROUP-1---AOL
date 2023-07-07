import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCb-k4KL4GhcNYL-JEbLKUPBAlCEkvrEY0",
            authDomain: "seefp-d1dfe.firebaseapp.com",
            projectId: "seefp-d1dfe",
            storageBucket: "seefp-d1dfe.appspot.com",
            messagingSenderId: "208840856783",
            appId: "1:208840856783:web:6b4b712cab7fa3648013ba",
            measurementId: "G-Q8EESFV47Z"));
  } else {
    await Firebase.initializeApp();
  }
}
