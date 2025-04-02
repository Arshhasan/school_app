import 'package:flutter/material.dart';



class FeePage extends StatelessWidget {
  const FeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fee',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true, // Centers the title
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: const Color(0xFF213069),
      ),
      body: const Center(child: Text('FeePage')),
    );
  }
}