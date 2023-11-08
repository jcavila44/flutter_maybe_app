import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pinimg.com/474x/e3/bf/45/e3bf454c13590ec9bb6c093a4c01f45a.jpg'),
          ),
        ),
        title: const Text('Argemiro 😀'),
        centerTitle: true,
      ),
    );
  }
}
