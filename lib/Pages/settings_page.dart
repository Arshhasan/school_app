import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true, // Centers the title
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: const Color(0xFF213069),
      ),
      body: const Center(child: Text('Settings')),
    );
  }
}
