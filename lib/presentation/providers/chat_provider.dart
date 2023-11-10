import 'package:flutter/material.dart';
import 'package:flutter_maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messagesList = [
    Message(text: 'Hablame!', fromWho: FromWho.me),
    Message(text: 'Vamos a rodar 🏍?', fromWho: FromWho.me),
    Message(text: 'Si', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final Message newMessage = Message(text: text, fromWho: FromWho.me);
    messagesList.add(newMessage);
    notifyListeners();
    modeScrollToBottom();
  }

  Future<void> modeScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }
}
