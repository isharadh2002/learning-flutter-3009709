import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {

  final Alignment alignment;
  final String inputMessage;
  final String imageURL;

  const ChatBubble({Key? key, required this.alignment, required this.inputMessage, required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(
    alignment == Alignment.centerLeft || alignment == Alignment.centerRight,
    'Alignment must be either Alignment.centerLeft or Alignment.centerRight',
    );

    return Align(
      alignment: alignment,
      child: SizedBox(
        width: 300,
        child: Container(
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft:
              Radius.circular(alignment == Alignment.centerLeft ? 0 : 20),
              bottomRight:
              Radius.circular(alignment == Alignment.centerRight ? 0 : 20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                inputMessage,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.network(
                imageURL,
                width: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
