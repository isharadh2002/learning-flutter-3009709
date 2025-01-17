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
              children: [
                getChatBubble(Alignment.centerRight, 'Fitgirl Logo',
                    'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2'),
                getChatBubble(
                    Alignment.centerLeft,
                    'What Kind of Cat Breed Is Beluga? Influencer Interesting Facts - Catster',
                    'https://www.catster.com/wp-content/uploads/2023/11/Beluga-Cat-e1714190563227.webp'),
                getChatBubble(
                    Alignment.centerRight,
                    'Cute Cat Meme Generator - Imgflip',
                    'https://imgflip.com/s/meme/Cute-Cat.jpg'),
                getChatBubble(
                    Alignment.centerLeft,
                    'Hand over your silliest cat memes 💥 : r/cats',
                    'https://preview.redd.it/hand-over-your-silliest-cat-memes-v0-665xjvlhb4yc1.jpeg?width=640&crop=smart&auto=webp&s=d857719af329d11425f874716ff1ec6f0818016e'),
              ],
            ),
          ),
          Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add, color: Colors.black)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send, color: Colors.black)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget getChatBubble(
    Alignment alignment, String inputMessage, String imageURL) {
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
