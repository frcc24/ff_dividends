import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD5qM4xrKFffjTB98m1RjTlmUM3KtOda_k",
            authDomain: "dividenfd-k0iqzw.firebaseapp.com",
            projectId: "dividenfd-k0iqzw",
            storageBucket: "dividenfd-k0iqzw.firebasestorage.app",
            messagingSenderId: "1017031437076",
            appId: "1:1017031437076:web:c5aa893fe442d4a4f5f001"));
  } else {
    await Firebase.initializeApp();
  }
}
