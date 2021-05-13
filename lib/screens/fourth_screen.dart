import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth view'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Informação!'),

          Divider(height: 50.0, color: Colors.orange),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton.icon(
                icon: Icon(Icons.add_to_home_screen_rounded),
                label: Text('Home'),
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
