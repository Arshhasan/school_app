
import 'package:flutter/material.dart';
import 'live_location_page.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({super.key});

  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  // Placeholder transport details (should be replaced with backend data)
  Map<String, String> transportDetails = {
    'Route Name': 'Loading...',
    'Driver Name': 'Loading...',
    'Driver Number': 'Loading...',
    'Conductor Name': 'Loading...',
    'Conductor Number': 'Loading...',
    'Bus Number': 'Loading...'
  };

  @override
  void initState() {
    super.initState();
    fetchTransportDetails();
  }

  void fetchTransportDetails() async {
    // Simulating API call delay
    await Future.delayed(const Duration(seconds: 2));

    // Simulated backend response
    setState(() {
      transportDetails = {
        'Route Name': 'Route 44',
        'Driver Name': 'Sonu singh',
        'Driver Number': '100',
        'Conductor Name': 'Ram singh',
        'Conductor Number': '200',
        'Bus Number': 'DL876'
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transport Information',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: const Color(0xFF213069),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display transport details dynamically
            ...transportDetails.entries.map((entry) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        entry.key,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        entry.value,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                )),

            const SizedBox(height: 20),

            // Button to open the Live Location page
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LiveLocationPage()),
                  );
                },
                icon: const Icon(Icons.location_on),
                label: const Text("View Live Location"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF213069),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
