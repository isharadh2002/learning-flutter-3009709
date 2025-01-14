import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "CHat App!!!",
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow), useMaterial3: true),
      home: LoginPage(),
    );
  }
}
