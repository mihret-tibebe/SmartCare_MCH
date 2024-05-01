import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smartcare/HomePage.dart';
import 'package:smartcare/styled_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Care',
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  int _value = 0;

  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> images = [
    'images/homePageMom.png',
    'images/Screenshot (696) 1.png',
    'images/mom2.png',
    'images/pregnant.png',
    'images/birthcontrol_after_abortion_bloghero 1.png',
    'images/picture-that-describes-family-planning 1.png',
    'images/mom1.png',
  ];

  @override
  void initState() {
    super.initState();
    // Start a timer to automatically scroll to the next page every 3 seconds
    Timer.periodic(
      const Duration(seconds: 4),
      (timer) {
        if (_currentPage < 3) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
    );
    //   _animationController = AnimationController(
    //     vsync: this,
    //     duration: const Duration(seconds: 3),
    //   );
    //   _animation =
    //       Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    //   _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 100.0, bottom: 0.0),
                height: 300,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Image.asset(
                        images[index],
                      ),
                    );
                  },
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                ),
              ),
              Container(
                // color: const Color(0xFFffffff),
                margin: const EdgeInsets.only(top: 0.0), // Remove bottom margin
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  color: Color(0xFFffffff),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        width: double.infinity,
                        child: StyledText('የተመዘገቡበትን ማዕከል ይምረጡ'),
                      ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RadioListTile(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int;
                              });
                            },
                            title: const Text('የትም አልተመዘገብኩም'),
                          ),
                          RadioListTile(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int;
                              });
                            },
                            title: const Text('ጥሩነሽ ቤጂንግ ሆስፒታል'),
                          ),
                          RadioListTile(
                            value: 3,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int;
                              });
                            },
                            title: const Text('ቅዱስ ጳውሎስ ሆስፒታል'),
                          ),
                          RadioListTile(
                            value: 4,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int;
                              });
                            },
                            title: const Text('ሃሌሉያ ሆስፒታል'),
                          ),
                          RadioListTile(
                            value: 5,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int;
                              });
                            },
                            title: const Text('በጸጋህ ሆስፒታል'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue, // background
                              onPrimary: Colors.white, // foreground
                              fixedSize: const Size(300.0, 10.0),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const HomePage();
                                  },
                                ),
                              );
                            },
                            child: const Text('አስገባ'),
                          ),
                        ],
                      ),
                    ],
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
