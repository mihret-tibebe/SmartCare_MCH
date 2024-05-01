import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartcare/styled_text.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int _currentIndex = 1;
  final TextEditingController _textController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [
    {'text': 'Hello!', 'isMe': false},
    {'text': 'Hi there!', 'isMe': true},
    {'text': 'How are you?', 'isMe': false},
    {'text': 'I\'m good, thanks!', 'isMe': true},
  ];

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
        title: const StyledText('ባለሞያን ያውጉ'),
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
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: _messages.map((message) {
                    return ChatBubble(
                      message: message['text'],
                      isMe: message['isMe'],
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          controller: _textController,
                          decoration: const InputDecoration(
                            hintText: 'ጥያቄ?',
                            border: InputBorder.none,
                          ),
                          maxLines: null,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.send,
                        color: Color(0xFF288eeb),
                      ),
                      onPressed: () {
                        if (_textController.text.isNotEmpty) {
                          setState(() {
                            _messages.add({
                              'text': _textController.text,
                              'isMe': true,
                            });
                            _textController.clear();
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  const ChatBubble({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue : Colors.grey[300],
          // color: isMe ? Color(0xFFadd8e6) : Color(0xFF143d59),

          borderRadius: isMe
              ? const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isMe ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
