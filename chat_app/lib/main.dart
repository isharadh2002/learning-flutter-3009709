import 'package:flutter/material.dart';
import 'login_page.dart';
import 'login_page_2.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter Chat App",
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeData(
          useMaterial3: true, // Ensure Material 3 is enabled
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, // Base color for theme
          ),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.dark, // Dark theme
          ),
        ),
        home: const LoginPage2());
  }
}
