import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartcare/styled_text.dart';

class DangerDetailPage extends StatefulWidget {
  // const DangerDetailPage({Key? key}) : super(key: key);
  final Map dangerInfo;
  const DangerDetailPage(this.dangerInfo, {Key? key}) : super(key: key);

  @override
  State<DangerDetailPage> createState() => _DangerDetailPageState();
}

class _DangerDetailPageState extends State<DangerDetailPage> {
  int _currentIndex = 1;
  bool _isPressed = false;
  final List<String> _DangerTag = ['ለእርስዎ', 'ቤተሰብ፡ምጣኔ', 'እርግዝና', 'ለእናቶች', 'ክትባት'];
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
        title: StyledText(widget.dangerInfo['title']),
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
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 100.0),
                child: const Icon(
                  Icons.warning_amber,
                  size: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  widget.dangerInfo['detail'],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
