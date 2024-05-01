import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center,
    );
  }
}

class ProfileIcon extends StatefulWidget {
  const ProfileIcon({ Key? key }) : super(key: key);

  @override
  State<ProfileIcon> createState() => _ProfileIconState();
}

class _ProfileIconState extends State<ProfileIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.account_circle,
        color: Colors.blue,
      ),
      iconSize: 30,
      onPressed: () {},
    );
  }
}
