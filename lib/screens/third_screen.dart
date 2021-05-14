import 'package:flutter/material.dart';
import '../shared/components/text_component.dart';
import 'fourth_screen.dart';
import '../shared/components/button_component.dart';
import '../shared/components/container_box_shadow_component.dart';
import '../shared/core/routes/app_route.dart';

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
  final String msg = '3° Screen';
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context).settings.arguments as FourthParam;

    // Verificando se o args vem nulo
    // Atribuindo novas informações no arg
    // Dessa forma, a tela não vai crashar
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
          TextComponent(data: msg),

          SizedBox(height: 50.0),

          TextComponent(data: arg.name),
          TextComponent(data: arg.getIdade.toString()),

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
                    final args = GetDataFromFourthScreen(color: Colors.white);

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
