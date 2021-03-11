import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String errorText;

  const MyTextField({Key key, this.controller, this.hintText, this.errorText})
      : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextStyle errorMessageStyle = TextStyle(color: Colors.red, fontSize: 12.0);
  TextStyle inputStyle = TextStyle(color: Colors.black, fontSize: 22.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            widget.errorText,
            style: errorMessageStyle,
          ),
          TextField(
            controller: widget.controller,
            style: inputStyle,
            decoration: InputDecoration(hintText: widget.hintText),
          )
        ],
      ),
    );
  }
}
