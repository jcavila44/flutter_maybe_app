import 'package:flutter/material.dart';
import 'package:flutter_maybe_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message textMessage;

  const HerMessageBubble({super.key, required this.textMessage});

  @override
  Widget build(BuildContext context) {
    final colors =
        Theme.of(context).colorScheme; //Son los estilos creados desde el Theme

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
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
        const SizedBox(height: 5),
        _ImageBubble(textMessage: textMessage),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final Message textMessage;

  const _ImageBubble({required this.textMessage});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        textMessage.imageUrl!,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          //Si ya consumió, retorna el child que es la respuesta del consumo
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Center(
              child: Text(
                'Argemiro está subiendo un memazo...',
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
