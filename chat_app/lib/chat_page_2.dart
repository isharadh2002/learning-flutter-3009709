import 'package:flutter/material.dart';

class ChatPage2 extends StatelessWidget {
  const ChatPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Contact Name",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Log Out button pressed");
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView(
              children: const [
                ChatBubble(
                  imageURL:
                      'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  text: "FitGirl Logo",
                  alignment: Alignment.centerLeft,
                ),
                ChatBubble(
                  imageURL:
                      'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  text: "FitGirl Logo",
                  alignment: Alignment.centerRight,
                ),
                ChatBubble(
                  imageURL:
                      'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  text: "FitGirl Logo",
                  alignment: Alignment.centerLeft,
                ),
                ChatBubble(
                  imageURL:
                      'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  text: "FitGirl Logo",
                  alignment: Alignment.centerRight,
                ),
                ChatBubble(
                  imageURL:
                      'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  text: "FitGirl Logo",
                  alignment: Alignment.centerLeft,
                ),
                ChatBubble(
                  imageURL:
                      'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  text: "FitGirl Logo",
                  alignment: Alignment.centerRight,
                ),
                ChatBubble(
                  imageURL:
                      'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  text: "FitGirl Logo",
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    print("Add Icon Pressed");
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("Send Icon Pressed");
                  },
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String imageURL;
  final String text;
  final Alignment alignment;

  const ChatBubble({
    Key? key,
    required this.imageURL,
    required this.text,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: alignment == Alignment.centerLeft
                ? Radius.circular(20)
                : Radius.zero,
            bottomLeft: alignment == Alignment.centerRight
                ? Radius.circular(20)
                : Radius.zero,
          ),
        ),
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.network(
              imageURL,
              width: 250,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
