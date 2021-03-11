import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  final bool enabled;
  final Function() nextStep;

  const SubmitButton({Key key, this.enabled, this.nextStep}) : super(key: key);

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.enabled ? widget.nextStep : null,
      child: Text('Choose this Email'),
    );
  }
}
