// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// class AttendancePage extends StatefulWidget {
//   const AttendancePage({super.key});

//   @override
//   State<AttendancePage> createState() => _AttendancePageState();
// }

// class _AttendancePageState extends State<AttendancePage> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Attendance',
//           style: TextStyle(color: Colors.white),
//         ),
//         iconTheme: IconThemeData(color: Colors.white),
//         centerTitle: true,
//         backgroundColor: const Color(0xFF213069),
//       ),
//       body: Column(
//         children: [
//           TabBar(
//             controller: _tabController,
//             tabs: const [
//               Tab(text: 'Month'),
//               Tab(text: 'Year'),
//             ],
//             labelColor: Colors.black,
//             indicatorColor: const Color(0xFF213069),
//           ),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: Column(
//                     children: [
//                       TableCalendar(
//                         firstDay: DateTime.utc(2020, 1, 1),
//                         lastDay: DateTime.utc(2030, 12, 31),
//                         focusedDay: _focusedDay,
//                         calendarFormat: CalendarFormat.month,
//                         availableCalendarFormats: const {
//                           CalendarFormat.month: 'Month',
//                         },
//                         headerStyle: HeaderStyle(
//                           formatButtonVisible: false,
//                           titleCentered: true,
//                           leftChevronIcon: SizedBox.shrink(),
//                           rightChevronIcon: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               IconButton(
//                                 icon: const Icon(Icons.chevron_left),
//                                 onPressed: () {
//                                   setState(() {
//                                     _focusedDay = DateTime(_focusedDay.year, _focusedDay.month - 1, 1);
//                                   });
//                                 },
//                               ),
//                               IconButton(
//                                 icon: const Icon(Icons.chevron_right),
//                                 onPressed: () {
//                                   setState(() {
//                                     _focusedDay = DateTime(_focusedDay.year, _focusedDay.month + 1, 1);
//                                   });
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                         selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
//                         onDaySelected: (selectedDay, focusedDay) {
//                           if (!isSameDay(_selectedDay, selectedDay)) {
//                             setState(() {
//                               _selectedDay = selectedDay;
//                               _focusedDay = focusedDay;
//                             });
//                           }
//                         },
//                         onPageChanged: (focusedDay) {
//                           _focusedDay = focusedDay;
//                         },
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text('Attendance Status', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Color(0xFF2F15D9))),
//                           Text('Download', style: TextStyle(fontSize: 14, color: Colors.green)),
//                         ],
//                       ),
//                       const SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           _buildTile('Present', Colors.green, Icons.check_circle, '20 Days'),
//                           _buildTile('Absent', Colors.red, Icons.cancel, '5 Days'),
//                           _buildTile('Leave', Colors.yellow, Icons.hourglass_empty, '3 Days'),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Center(child: Text('Year View Placeholder')),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTile(String title, Color color, IconData icon, String count) {
//     return Expanded(
//       child: Container(
//         padding: const EdgeInsets.all(10),
//         margin: const EdgeInsets.symmetric(horizontal: 5),
//         decoration: BoxDecoration(
//           color: color.withValues(alpha: 0.2),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, color: color, size: 30),
//             const SizedBox(height: 5),
//             Text(title, style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold)),
//             Text(count, style: const TextStyle(fontSize: 14)),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Attendance',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color(0xFF213069),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Month'),
              Tab(text: 'Year'),
            ],
            labelColor: Colors.black,
            indicatorColor: const Color(0xFF213069),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      TableCalendar(
                        firstDay: DateTime.utc(2020, 1, 1),
                        lastDay: DateTime.utc(2030, 12, 31),
                        focusedDay: _focusedDay,
                        calendarFormat: CalendarFormat.month,
                        availableCalendarFormats: const {
                          CalendarFormat.month: 'Month',
                        },
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                          leftChevronIcon: SizedBox.shrink(),
                          rightChevronIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.chevron_left),
                                onPressed: () {
                                  setState(() {
                                    _focusedDay = DateTime(_focusedDay.year, _focusedDay.month - 1, 1);
                                  });
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.chevron_right),
                                onPressed: () {
                                  setState(() {
                                    _focusedDay = DateTime(_focusedDay.year, _focusedDay.month + 1, 1);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                        onDaySelected: (selectedDay, focusedDay) {
                          if (!isSameDay(_selectedDay, selectedDay)) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay = focusedDay;
                            });
                          }
                        },
                        onPageChanged: (focusedDay) {
                          _focusedDay = focusedDay;
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Attendance Status', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Color(0xFF2F15D9))),
                          Text('Download', style: TextStyle(fontSize: 14, color: Colors.green)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildTile('Present', Colors.green, Icons.check_circle, '20 Days'),
                          _buildTile('Absent', Colors.red, Icons.cancel, '5 Days'),
                          _buildTile('Leave', Colors.yellow, Icons.hourglass_empty, '3 Days'),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(child: Text('Year View Placeholder')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTile(String title, Color color, IconData icon, String count) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 30),
            const SizedBox(height: 5),
            Text(title, style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold)),
            Text(count, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
