import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
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
    );
  }
}
