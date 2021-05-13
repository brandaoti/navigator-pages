import 'package:flutter/material.dart';
import 'package:navigator_pages/screens/fourth_screen.dart';
import 'package:navigator_pages/shared/components/button_component.dart';
import 'package:navigator_pages/shared/components/container_box_shadow_component.dart';
import 'package:navigator_pages/shared/core/routes/app_route.dart';

class FourthParam {
  final String name;
  final int idade;

  FourthParam({this.name = 'Daniel', this.idade = 29});

  get getIdade {
    return idade == null ? '' : idade;
  }
}

class ThirdScreen extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context).settings.arguments as FourthParam;

    if (arg == null) {
      arg = FourthParam(name: '', idade: null);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Third'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(arg.name),
          Text(arg.getIdade.toString()),

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
                  label: 'Voltar',
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoute.SECOND_SCREEN,
                    );
                  },
                ),
                ButtonComponent(
                  label: 'Fourth',
                  onPressed: () {
                    final args = ThirdParameters(color: Colors.white);

                    Navigator.popAndPushNamed(
                      context,
                      AppRoute.FOURTH_SCREEN,
                      arguments: args,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
