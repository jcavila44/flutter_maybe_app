import 'package:flutter/material.dart';
import 'package:flutter_maybe_app/domain/entities/message.dart';
import 'package:flutter_maybe_app/presentation/providers/chat_provider.dart';
import 'package:flutter_maybe_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_maybe_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_maybe_app/presentation/widgets/shared/message_field_box.dart';
import 'package:provider/provider.dart';

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
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messagesList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messagesList[index];
                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBubble(textMessage: message)
                      : MyMessageBubble(textMessage: message);
                },
              ),
            ),
            MessageFieldBox(onValue: chatProvider.sendMessage)
          ],
        ),
      ),
    );
  }
}
