import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Let\'s sign you in!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),

              const Text(
                'Welcome back! \n You\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blueGrey),
              ),
              Image.network(
                'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
                height: 200,
              ),

              //TODO: Add Login Button
              ElevatedButton(
                onPressed: () {
                  print("Login button pressed!");
                },
                child: const Text(
                  "Elevated Button",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Outlined Button"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Text Button",
                ),
              )
              //TODO: Add URL Text Button
            ],
          ),
        ),
      ),
    );
  }
}
