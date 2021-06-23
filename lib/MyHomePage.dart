import 'package:flutter/material.dart';

import 'EmailBox.dart';
import 'SecondPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void nextPage() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(text: controller.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: EmailBox(controller: controller, nextPage: nextPage),
        ),
      ),
    );
  }
}
