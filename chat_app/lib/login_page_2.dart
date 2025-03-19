import 'package:flutter/material.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Login Screen", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.blue,
      ),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Pressed");
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Let's sign you in",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const Text(
              "Welcome Back !\nYou've been missed",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSGAtgxs1sGR30Ak9pgzc8Of3Wlm7NTFgTBA&s',
              width: 250,
            ),
            Container(
              width: 150,
              height: 150,
              child: const FlutterLogo(),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSGAtgxs1sGR30Ak9pgzc8Of3Wlm7NTFgTBA&s',
                  ),
                  fit: BoxFit.fitWidth
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
