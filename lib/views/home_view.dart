import 'package:flutter/material.dart';
import 'package:navigator_pages/views/second_view.dart';
import 'package:navigator_pages/views/third_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('Pagina inicial'),
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
                              builder: (context) => SecondPage(
                                nome: 'Daniel Brandão',
                                idade: 29,
                                color: Colors.blue,
                              ),
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
                              builder: (context) => ThirdPage(),
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
