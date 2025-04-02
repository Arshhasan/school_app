import 'package:flutter/material.dart';
import 'Pages/result_page.dart';
import 'Pages/transport_page.dart';
import 'Pages/time_table_page.dart';
import 'Pages/attendence_page.dart';
import 'Pages/fee_page.dart';
import 'Pages/assignment_page.dart';
import 'Pages/settings_page.dart';
import 'Pages/profile_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(33, 48, 105, 100)),
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF213069),       
        actions: const [
          PopupMenuExample(),
        ],
        title: Text(
                      widget.title,
                      style: TextStyle(color: Colors.white),
                      ),
        centerTitle: true,  // Centers the title

      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}

// Enum for menu items
enum SampleItem { transport, settings, profile, attendance ,assignmnet ,result,fee, timetable}

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SampleItem>(
      icon: const Icon(Icons.more_vert), // Three-dot menu icon
      onSelected: (SampleItem item) {
        switch (item) {
          case SampleItem.transport:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TransportPage()));
            break;
          case SampleItem.result:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultPage()));
            break;
          case SampleItem.fee:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const FeePage()));
            break;    
          case SampleItem.attendance:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AttendancePage()));
            break;
          case SampleItem.settings:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
            break;
          case SampleItem.profile:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
            break;
          case SampleItem.assignmnet:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AssignmentPage()));
            break;
          case SampleItem.timetable:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TimeTablePage()));
            break;      
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          value: SampleItem.transport,
          child: Text('Transport'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.attendance,
          child: Text('Attendance'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.settings,
          child: Text('Settings'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.profile,
          child: Text('Profile'),
        ),
         const PopupMenuItem<SampleItem>(
          value: SampleItem.assignmnet,
          child: Text('Assignmnet'),
        ),
         const PopupMenuItem<SampleItem>(//double
          value: SampleItem.result,
          child: Text('Result'),
        ),
         const PopupMenuItem<SampleItem>(
          value: SampleItem.fee,
          child: Text('Fee'),
         ), 
         const PopupMenuItem<SampleItem>(//double
          value: SampleItem.timetable,
          child: Text('Time Table'),
          
        ),
      ],
    );
  }
}








