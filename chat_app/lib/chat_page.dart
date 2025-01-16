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
            style: TextStyle(),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Icon pressed!");
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Hello there !!!",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.network(
                  'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  width: 250,

                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Hello there !!!",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.network(
                  'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  width: 250,

                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Hello there !!!",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.network(
                  'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  width: 250,

                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Hello there !!!",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.network(
                  'https://preview.redd.it/should-i-watch-the-fitgirl-movie-aka-am%C3%A9lie-v0-50erfbfvsdrc1.jpg?width=1536&format=pjpg&auto=webp&s=d0a4f0e16f7f88af40e8985918e89b59530591b2',
                  width: 250,

                ),
              ],
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Colors.black)),

                IconButton(onPressed: (){}, icon: Icon(Icons.send, color: Colors.black)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
