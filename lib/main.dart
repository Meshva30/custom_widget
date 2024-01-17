import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text("🛍️ List of Fruits",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            centerTitle: true,
          ),
          body: Center(
            child: RichText(
              text: TextSpan(children: [
                mywidget(
                  text: "🍎 Apple",
                  c1: Colors.red,
                  f1: 30,
                ),
                mywidget(text: "🍇 Greps", c1: Colors.purpleAccent, f1: 30),
                mywidget(text: "🍒 Cherry", c1: Colors.purple, f1: 30),
                mywidget(text: "🍓 Strawberry", c1: Colors.pink, f1: 30),
                mywidget(text: "🥭 Mango", c1: Colors.orange, f1: 30),
                mywidget(text: "🍍Pineapple ", c1: Colors.green, f1: 30),
                mywidget(text: "🍋 Lemon", c1: Colors.yellow, f1: 30),
                mywidget(text: "🍉 Watermelon", c1: Colors.lightGreen, f1: 30),
                mywidget(text: "🥥 Coconut", c1: Colors.brown, f1: 30),
              ]),
            ),
          ),
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

TextSpan mywidget({required text, c1, double? f1}) {
  return TextSpan(
      text: "$text\n",
      style: TextStyle(
          color: c1,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          height: 1.5));
}
