import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAm7uMIx-79SR3azm_76LNMT4PPkL8lAsc",
            authDomain: "to-do-j8npa6.firebaseapp.com",
            projectId: "to-do-j8npa6",
            storageBucket: "to-do-j8npa6.firebasestorage.app",
            messagingSenderId: "285853104145",
            appId: "1:285853104145:web:7929c9cfd4d4c755fc59b0"));
  } else {
    await Firebase.initializeApp();
  }
}
