import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String text;

  const SecondPage({Key? key, required this.text}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('This is the second page'),
        ),
        body: Container(
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(widget.text),
                ),
              ),
              Flexible(
                flex: 1,
                child: ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: Text('Back')),
              ),
              Spacer()
            ],
          ),
        ));
  }
}
