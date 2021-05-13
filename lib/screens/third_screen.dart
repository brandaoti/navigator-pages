import 'package:flutter/material.dart';
import 'package:navigator_pages/screens/fourth_screen.dart';

class ThirdScreen extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third'),
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
                label: Text('Tela 2'),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => FourthScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
