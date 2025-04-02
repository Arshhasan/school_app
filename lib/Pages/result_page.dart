
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Results',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true, // Centers the title
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: const Color(0xFF213069),
      ),
      body: Column(
        children: [
          // Blue Tile
          Container(
            height: 90, // Adjust height as needed
            width: double.infinity, // Full width
            color: const Color(0xFF273D8E),
          ),

          // Row with Text & Icon Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items properly
              children: [
                // Text on the left
                const Text(
                  'Check Latest Result',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                // Row for two icon buttons
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Action for first button
                      },
                      icon: const Icon(Icons.share), // First icon
                      color: Colors.blue, // Icon color
                    ),
                    IconButton(
                      onPressed: () {
                        // Action for second button
                      },
                      icon: const Icon(Icons.download), // Second icon
                      color: Colors.blue, // Icon color
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Expanded Section for Content
          // const Expanded(
          //   child: Center(child: Text('Results')),
          // ),
        ],
      ),
    );
  }
}
