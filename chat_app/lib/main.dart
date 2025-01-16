import 'package:chat_app/chat_page.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      theme: ThemeData(
        useMaterial3: true, // Enable Material 3 design
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow, // Use a single seed color for the entire app
        ),
        appBarTheme: AppBarTheme(
          color: Colors.yellow
        )
      ),
      //TODO: Create ChatPage() & add appBar, basic ChatBubble & ChatInput widget
      home: ChatPage(),
    );
  }
}
