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
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF213069),
      ),
      body: Column(
        children: [
          Container(
            height: 90, // Adjust height as needed
            width: double.infinity, // Full width
            color: const Color(0xFF273D8E),
            child: Center(  // This centers the Row inside the container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centers the Row's children horizontally
                crossAxisAlignment: CrossAxisAlignment.center, // Aligns items in the middle vertically
                children: [
                  Column(

                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "School Fees for Q2",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '\$4000',
                        style: TextStyle(color: Colors.white,fontSize: 25),
                        
                      ),
                    ],
                  ),
                  const SizedBox(width: 20), // Adds space between text and button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    child: const Text("Pay Now", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
