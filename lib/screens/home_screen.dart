import 'package:flutter/material.dart';

import '../shared/components/button_component.dart';
import '../shared/components/container_box_shadow_component.dart';
import '../shared/core/routes/app_route.dart';

class GetDataFromFirstScreen {
  final String name;
  final int idade;

  GetDataFromFirstScreen({this.name = 'Daniel', this.idade = 29});

  get getIdade {
    return idade == null ? '' : idade;
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String msg = '1° Screen';

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context).settings.arguments as GetDataFromFirstScreen;

    if (arg == null) {
      arg = GetDataFromFirstScreen(name: '', idade: null);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('First'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            msg,
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 50.0),

          Text(arg.name),
          Text(arg.getIdade.toString()),

          // !
          Divider(
            height: 50.0,
            color: Colors.black,
            indent: 20.0,
            endIndent: 20.0,
          ),

          //
          ContainerBoxShadowComponent(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonComponent(
                  label: 'Second',
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoute.SECOND_SCREEN,
                    );
                  },
                ),
                //
                ButtonComponent(
                    label: 'Third',
                    onPressed: () => Navigator.pushNamed(
                          context,
                          AppRoute.THIRD_SCREEN,
                        )),
              ],
            ),
          ),

          //
        ],
      ),
    );
  }
}
