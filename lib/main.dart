import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF219ebc),
      appBar: AppBar(
        title: const Text(
          "Dice App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF023047),
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    print("Dado izquierdo");
                    leftDice = 6;
                    setState(() {});
                  },
                  child: Image.asset('assets/images/dice$leftDice.png')),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    print("Dado derecho");
                  },
                  child: Image.asset('assets/images/dice5.png')),
            ),
          ],
        ),
      ),
    );
  }
}
