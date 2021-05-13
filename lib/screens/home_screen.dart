import 'package:flutter/material.dart';
import 'package:navigator_pages/screens/second_view.dart';
import 'package:navigator_pages/screens/third_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('First'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // ]
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Pagina inicial'),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 50,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: Text('2'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondScreen(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        child: Text('3'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
