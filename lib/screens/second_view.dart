import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ola meu amigo!'),

          Divider(height: 50.0, color: Colors.orange),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton.icon(
                icon: Icon(Icons.add_to_home_screen_rounded),
                label: Text('Tela 3'),
                style: OutlinedButton.styleFrom(
                  elevation: 5,
                  // enableFeedback: true,
                ),
                onPressed: () {},
              ),
              OutlinedButton.icon(
                icon: Icon(Icons.add_to_home_screen_rounded),
                label: Text('Tela 4'),
                style: OutlinedButton.styleFrom(
                  elevation: 5,
                  // enableFeedback: true,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
