import 'package:chat_app/chat_page.dart';
import 'package:chat_app/fuel_quota_3.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      theme: ThemeData(
        useMaterial3: true, // Enable Material 3 design
        colorScheme: ColorScheme.fromSeed(
          seedColor:
              Colors.blue, // Use a single seed color for the entire app
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      home: const ChatPage(),
      //home: const VehicleOwnerPage(ownerName: "Ishara Dhanushan", ownerEmail: "isharadh2002@gmail.com", vehicleModel: "Nissan Leaf", vehicleNumber: "CAM-7534", totalQuota: 50, initialRemainingQuota: 40),
    );
  }
}
