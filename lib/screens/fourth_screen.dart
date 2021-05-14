import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'third_screen.dart';
import '../shared/components/button_component.dart';
import '../shared/components/container_box_shadow_component.dart';
import '../shared/core/routes/app_route.dart';

class ThirdParameters {
  // final String title;
  final Color color;

  ThirdParameters({this.color = Colors.black});
}

class FourthScreen extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as ThirdParameters;

    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth'),
        centerTitle: true,
      ),
      backgroundColor: args.color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('args.title'),

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
                    final args = FourthParam();

                    Navigator.popAndPushNamed(
                      context,
                      AppRoute.THIRD_SCREEN,
                      arguments: args,
                    );
                  },
                ),
                ButtonComponent(
                    label: 'First',
                    onPressed: () {
                      final args = ComeBackFourth();

                      Navigator.popAndPushNamed(
                        context,
                        AppRoute.HOME,
                        arguments: args,
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
