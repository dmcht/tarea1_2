import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  double contador = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hola mundo',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 56, 53, 206),
          title: const Text('CALCULATOR'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Valor: $contador',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 10, 6, 236),
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber[700],
              onPressed: incrementar, // paso unicamente la referencia
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 35),
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 207, 19, 45),
              onPressed: restar, // paso unicamente la referencia
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 35),
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 36, 207, 79),
              onPressed: multiplicar, // paso unicamente la referencia
              child: const Icon(Icons.close),
            ),
            const SizedBox(width: 35),
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 68, 144, 230),
              onPressed: dividir, // paso unicamente la referencia
              child: const Text('/'),
            ),
          ],
        ),
      ),
    );
  }

  void incrementar() {
    setState(() {});
    contador = contador + 2;
  }

  void restar() {
    setState(() {});
    contador = contador - 2;
  }

  void multiplicar() {
    setState(() {});
    contador = contador * 2;
  }

  void dividir() {
    setState(() {});
    contador = contador / 2;
  }
}
