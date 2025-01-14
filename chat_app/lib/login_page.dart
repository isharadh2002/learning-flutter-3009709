import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button clicked');
          },
        ),
        //TODO: Add the text and image from the design
        body: Center(
          child: Column(
            children: [
              const Text(
                'Let\'s sign you in',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Welcome back!\nYou've been missed",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSGAtgxs1sGR30Ak9pgzc8Of3Wlm7NTFgTBA&s',
                width: 250,
              ),
              Container(
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSGAtgxs1sGR30Ak9pgzc8Of3Wlm7NTFgTBA&s',
                  ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.all(25),
              )
            ],
          ),
        ));
  }
}
