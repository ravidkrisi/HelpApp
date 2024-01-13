import 'package:firstapp/pages/result_box.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:flutter/material.dart';

// decorations

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    // **** decorations ****
    double item_box_height = 150;
    Color item_color = Color.fromARGB(255, 227, 241, 227);

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("HelpApp")),
          backgroundColor: Color.fromARGB(255, 139, 253, 142),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            resultBox(Colors.green, height: 20),
            resultBox(Colors.red),
            resultBox(Colors.yellow),
          ],
        ));
  }
}
