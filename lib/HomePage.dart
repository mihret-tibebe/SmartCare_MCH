import 'package:flutter/material.dart';
import 'package:smartcare/chat_page.dart';
import 'package:smartcare/schedule.dart';
import 'package:smartcare/styled_text.dart';
import 'package:smartcare/tips_page.dart';
import 'package:smartcare/danger_page.dart';
import 'package:smartcare/alarm_page.dart';

import 'nearby_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const StyledText('Smart MCH'),
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
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                        ),
                        color: const Color(0xFFf4b41a),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 100.0),
                      // , left: 0.0
                      width: MediaQuery.of(context).size.width / 1.7,
                      height: MediaQuery.of(context).size.height / 2.5,
                      constraints: const BoxConstraints.tightFor(),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0, // Add additional top padding of 16.0
                          left: 8.0,
                          right: 8.0,
                          bottom: 8.0,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TipsPage(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              const Text(
                                  'ፎሊክ አሲድ \n\nፎሊክ አሲድ የልጅዎን እንደ ስፒና ቢፊዳ ያሉ የነርቭ ቧንቧ ጉድለቶችን የመጋለጥ እድልን በእጅጉ ይቀንሳል።'),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50.0, top: 50),
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.navigate_before,
                                        color: Color(0xFF143d59),
                                      ),
                                      iconSize: 40,
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.navigate_next,
                                        color: Color(0xFF143d59),
                                      ),
                                      iconSize: 40,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'ይበልጥ አንብብ',
                                  style: TextStyle(
                                    color: Color(0xFFf4b41a),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF143d59),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NearbyPage(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(top: 30.0),
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Column(
                          children: [
                            Image.asset('images/unimap 1.png'),
                            Row(
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'አቅራቢያ',
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xFF143d59)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'ጥሩነሽ ቤጂንግ\n ሆስፒታል ይገኛል',
                                    style: TextStyle(
                                      color: Color(0xFF288eeb),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChatPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color(0xFF143d59),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            margin:
                                const EdgeInsets.only(top: 100.0, left: 10.0),
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('images/doc3 2.png'),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Text(
                                    'ሃኪምዎን ያማክሩ',
                                    style: TextStyle(
                                        color: Color(0xFFf4b41a), fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SchedulePage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color(0xFFefc9af),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            margin:
                                const EdgeInsets.only(top: 20.0, left: 10.0),
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/schedule.png',
                                  filterQuality: FilterQuality.high,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.0, bottom: 5.0),
                                  child: Text(
                                    'ቀጣይ ቀጠሮዎ',
                                    style: TextStyle(
                                      color: Color(0xFF2c8ebf),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'ቀን፡12',
                                    style: TextStyle(
                                        color: Color(0xFF2c8ebf), fontSize: 15),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'ወር፡06',
                                    style: TextStyle(
                                        color: Color(0xFF2c8ebf), fontSize: 15),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'ሰዐት፡ጥዋት 3፡30',
                                    style: TextStyle(
                                        color: Color(0xFF2c8ebf), fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xFFd32f2f),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 4,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(top: 20.0, left: 10.0),
                          width: MediaQuery.of(context).size.width / 2.8,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DangerPage(),
                                ),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Icon(
                                        Icons.warning_amber,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Text(
                                      '939',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'ለአደጋ ጊዜ ምልክቶች',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xFFf4b41a),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              margin: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AlarmPage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Image.asset('images/alarm picture.png'),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: const [
                          Text(
                            'የፎሊክ አሲድ አስታዋሽ',
                            style: TextStyle(
                              color: Color(0xFF143d59),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'ሁሌ ማታ 2፡00',
                            style: TextStyle(
                              color: Color(0xFF143d59),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'ቀይር',
                          style: TextStyle(color: Color(0xFFf4b41a)),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF143d59),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
