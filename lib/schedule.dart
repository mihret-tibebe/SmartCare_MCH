import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:smartcare/styled_text.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  int _currentIndex = 1;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  int date = 28;
  int month = 04;
  int time = 3;
  int rDate = 30;
  int rTime = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.blue, // Change the color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const StyledText('ቀጠሮዬ'),
        actions: const <Widget>[
          ProfileIcon(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.mail),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.chat),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xFFffffff),
              Color(0xFFADD8E6),
            ],
            focal: Alignment.topCenter,
            radius: 1.2,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 100.0),
                // child: Image.asset('images/schedule.png',
                child: TableCalendar(
                  focusedDay: _focusedDay,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: StyledText('ቀጣይ ቀጠሮዎ'),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 20),
                      children: [
                        const TextSpan(
                          text: 'ቀን: ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: '$date',
                          style: const TextStyle(color: Colors.blue),
                        ),
                        const TextSpan(
                          text: '  ወር: ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: '$month',
                          style: const TextStyle(color: Colors.blue),
                        ),
                        const TextSpan(
                          text: '  ሰዐት: ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: '$time',
                          style: const TextStyle(color: Colors.blue),
                        ),
                        const TextSpan(
                          text: '  ጥዋት',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 20),
                      children: [
                        const TextSpan(
                          text: 'ቀሪ ጊዜ ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: '$rDate',
                          style: const TextStyle(color: Colors.blue),
                        ),
                        const TextSpan(
                          text: '  ቀን : ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: '$rTime',
                          style: const TextStyle(color: Colors.blue),
                        ),
                        const TextSpan(
                          text: '  ሰዐት',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
