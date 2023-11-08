import 'package:flutter/material.dart';
import 'package:flutter_maybe_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_maybe_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_maybe_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/474x/e3/bf/45/e3bf454c13590ec9bb6c093a4c01f45a.jpg'),
          ),
        ),
        title: const Text('Argemiro 😀'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const MyMessageBubble()
                      : const HerMessageBubble();
                },
              ),
            ),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
