import 'package:flutter/material.dart';
import 'package:navigator_pages/screens/second_view.dart';
import 'package:navigator_pages/screens/third_screen.dart';
import 'package:navigator_pages/shared/components/button_component.dart';
import 'package:navigator_pages/shared/components/container_box_shadow_component.dart';
import 'package:navigator_pages/shared/core/routes/app_route.dart';

class ComeBackFourth {
  final String name;
  final int idade;

  ComeBackFourth({this.name = 'Daniel', this.idade = 29});

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
  String msg = 'Mensagem';

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context).settings.arguments as ComeBackFourth;

    if (arg == null) {
      arg = ComeBackFourth(name: 'Minha informação', idade: null);
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
