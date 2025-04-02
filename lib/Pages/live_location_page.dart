import 'package:flutter/material.dart';

// Live Location Page (Placeholder)
class LiveLocationPage extends StatelessWidget {
  const LiveLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Live Location",
           style: TextStyle(color: Colors.white),           

          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: const Color(0xFF213069),
      ),
      body: const Center(child: Text("Live location of the bus will be displayed here.")),
    );
  }
}
