import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Clubinho do Bebê',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/produtos': (context) => SecondScreen(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container (
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/produtos');
              },
              child: Text('Produtos'),
            ),
            Container (
              color: Colors.redAccent,
                width: 250,
                height: 100,
                child: Row(
                  children: [
                    Text("IMAGEM"),
                    Column(
                      children: [
                        Text("Jumperoo"),
                      ],
                    ),
                  ],
                )

            ),
          ],
        )

      )

    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produtos"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Voltar'),
        ),
      ),
    );
  }
}