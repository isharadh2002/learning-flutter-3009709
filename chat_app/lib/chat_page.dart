import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Name of the contact',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Logout icon pressed!");
            },
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              children: const [
                ChatBubble(
                    alignment: Alignment.centerRight,
                    inputMessage: 'Fitgirl Logo',
                    imageURL:
                        'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2'),
                ChatBubble(
                    alignment: Alignment.centerLeft,
                    inputMessage:
                        'What Kind of Cat Breed Is Beluga? Influencer Interesting Facts - Catster',
                    imageURL:
                        'https://www.catster.com/wp-content/uploads/2023/11/Beluga-Cat-e1714190563227.webp'),
                ChatBubble(
                    alignment: Alignment.centerRight,
                    inputMessage: 'Cute Cat Meme Generator - Imgflip',
                    imageURL: 'https://imgflip.com/s/meme/Cute-Cat.jpg'),
                ChatBubble(
                    alignment: Alignment.centerLeft,
                    inputMessage:
                        'Hand over your silliest cat memes 💥 : r/cats',
                    imageURL:
                        'https://preview.redd.it/hand-over-your-silliest-cat-memes-v0-665xjvlhb4yc1.jpeg?width=640&crop=smart&auto=webp&s=d857719af329d11425f874716ff1ec6f0818016e'),
                ChatBubble(
                    alignment: Alignment.centerLeft,
                    inputMessage: 'Cat Saying Huh! Weird Cat Memes',
                    imageURL:
                        'https://i.ytimg.com/vi/TK4I4RTOjQo/hq720.jpg?sqp=-oaymwE7CK4FEIIDSFryq4qpAy0IARUAAAAAGAElAADIQj0AgKJD8AEB-AH-CYAC0AWKAgwIABABGGUgUShHMA8=&rs=AOn4CLBvm1oFR0lAueoAqsfCM9_j5yfWfQ')
              ],
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
