import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'Pages/splash_page.dart';
import 'Pages/login_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print("🔥 Firebase init starting");
  await Firebase.initializeApp();
  print("✅ Firebase init done");
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arsh School App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(33, 48, 105, 100)),
      ),
      // home: const SplashScreen(),
      home: LoginPage(),
    );
  }
}
