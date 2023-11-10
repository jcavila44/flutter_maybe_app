import 'package:flutter/material.dart';
import 'package:flutter_maybe_app/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message textMessage;

  const MyMessageBubble({super.key, required this.textMessage});

  @override
  Widget build(BuildContext context) {
    final colors =
        Theme.of(context).colorScheme; //Son los estilos creados desde el Theme

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              textMessage.text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
