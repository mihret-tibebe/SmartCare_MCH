import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartcare/styled_text.dart';
import 'package:smartcare/tips_detail_page.dart';

class TipsPage extends StatefulWidget {
  const TipsPage({Key? key}) : super(key: key);

  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  int _currentIndex = 1;
  final bool _isPressed = false;
  // String tipInfo = 'ዶ/ር ሃሰን መንገሻ';
  Map<String, dynamic> tipInfo = {
    "title": 'የተመጣጠነ ምግብ የመመገብ ጠቀሜታ',
    "authorName": "ዶ/ር ሃሰን መንገሻ",
    "date": "የካቲት 4፣2016",
    "image": "images/fruit.PNG",
    "detail":
        " የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ  የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ  የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች የተመጣጠነ ምግብ የመመገብ ጥቅሞች"
  };

  final List<String> _tipsTag = ['ለእርስዎ', 'ቤተሰብ፡ምጣኔ', 'እርግዝና', 'ለእናቶች', 'ክትባት'];
  final List<bool> _isSelected = [false, false, false, false, false];

  final TextEditingController _textController = TextEditingController();

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
        title: const StyledText('ጠቃሚ መረጃዎች'),
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
                margin: const EdgeInsets.only(
                    top: 80.0, left: 20.0, right: 20.0, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                          hintText: 'መረጃ ይፈልጉ',
                          filled: true,
                          fillColor: const Color(0xFFadbfc8),
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: _isSelected[index]
                                ? Colors.grey[350]
                                : Colors.white,
                            onPrimary: Colors.blue,
                          ),
                          onPressed: () {
                            setState(() {
                              for (int i = 0; i < _isSelected.length; i++) {
                                _isSelected[i] = (i == index);
                              }
                            });
                          },
                          child: Text(_tipsTag[index]),
                        ),
                      );
                    },
                  ),
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TipsDetailPage(tipInfo),
                              ),
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 15.0,
                                              top: 10.0,
                                              bottom: 10.0),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.0, right: 8.0),
                                            child: Icon(Icons.account_circle),
                                          ),
                                        ),
                                        Text(
                                          tipInfo['authorName'],
                                          style: const TextStyle(
                                              color: Color(0xFF1766a6),
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Text(tipInfo['title']),
                                    const Text(
                                      'የካቲት 4፣2016 . የ 5ደቂቃ ንባብ',
                                      style: TextStyle(
                                        // color: Color(0xFFa8a8a8),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width / 5,
                                    margin: const EdgeInsets.only(left: 50),
                                    // child: Image.asset('images/fruit.PNG'),
                                    child: Image.asset(tipInfo['image']),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
