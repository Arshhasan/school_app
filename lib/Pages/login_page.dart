import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Import your pages
// import '../Pages/home_page.dart'; // Replace with actual path to MyHomePage
// import '../Pages/admin_page.dart'; // Replace with actual path to AdminPage

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> loginUser() async {
    String userId = userIdController.text.trim();
    String password = passwordController.text.trim();
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Check for user login
    var userDoc = await firestore.collection('users').doc(userId).get();
    if (userDoc.exists) {
      if (userDoc['password'].toString().trim() == password) {
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(
        //     builder: (_) => MyHomePage(title: "Welcome $userId"),
        //   ),
        // );
        Navigator.pushReplacementNamed(context, '/home', arguments: userId);

        return;
      }
    }

    // Check for admin login
    var adminDoc = await firestore.collection('admins').doc(userId).get();
    if (adminDoc.exists && adminDoc['password'].toString().trim() == password) {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (_) => const AdminPage()),
      // );
      Navigator.pushReplacementNamed(context, '/admin');

      return;
    }

    // Invalid credentials
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Invalid User ID or Password")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: const Color(0xFF213069),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userIdController,
              decoration: const InputDecoration(labelText: "User ID"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF213069),
              ),
              onPressed: loginUser,
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
