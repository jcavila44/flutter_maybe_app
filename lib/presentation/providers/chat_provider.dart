import 'package:flutter/material.dart';
import 'package:flutter_maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagesList = [
    Message(text: 'Hablame!', fromWho: FromWho.me),
    Message(text: 'Vamos a rodar 🏍?', fromWho: FromWho.me),
    Message(text: 'Si', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {}
}
