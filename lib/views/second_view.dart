import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String nome;
  final int idade;
  final Color color;

  const SecondPage({
    Key key,
    @required this.nome,
    @required this.idade,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda tela'),
        centerTitle: true,
      ),
      body: Container(
        color: color,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome $nome, Idade $idade.'),
            // Text('Segunda tela'),
          ],
        ),
      ),
    );
  }
}
