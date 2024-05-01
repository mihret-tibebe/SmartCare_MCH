import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartcare/styled_text.dart';

class NearbyPage extends StatefulWidget {
  const NearbyPage({Key? key}) : super(key: key);

  @override
  State<NearbyPage> createState() => _NearbyPageState();
}

class _NearbyPageState extends State<NearbyPage> {
  int _currentIndex = 1;

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
        title: const StyledText('አቅራቢያዬ'),
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
                child: Image.asset(
                  'images/unimap 1.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  color: Color(0xFFffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                    2,
                    (index) {
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color(0xFFf2f2f2),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                color: Color(0xFFd3e4f2),
                              ),
                              margin: const EdgeInsets.only(
                                  left: 15.0, top: 10.0, bottom: 10.0),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                                child: Text(
                                  "H",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Color(0xFF9cabbf),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                children: const <Widget>[
                                  Text(
                                    'ጥሩነሽ ቤጂንግ ሆስፒታል',
                                    style: TextStyle(
                                        color: Color(0xFF1766a6), fontSize: 12),
                                  ),
                                  Text(
                                    'አዲስ አበባ፣ ጎሮ',
                                    style: TextStyle(
                                        color: Color(0xFFa8a8a8), fontSize: 8),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(left: 80.0),
                                  child: const Icon(Icons.location_on_outlined),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 10.0),
                                  child: const Text('Addis Ababa',
                                  style: TextStyle(fontSize: 8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
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
