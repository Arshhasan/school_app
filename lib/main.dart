import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// Import all your pages here
import 'Pages/login_page.dart';
import 'Pages/home_page.dart';
import 'Pages/admin_page.dart';
import 'Pages/settings_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arsh School App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF213069)),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) {
          final userId = ModalRoute.of(context)?.settings.arguments as String?;
          return MyHomePage(title: "Welcome ${userId ?? ""}");
        },
        '/admin': (context) => const AdminPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
