import 'package:flutter/material.dart';
import 'package:mvvm_example/SubscriptionViewModel.dart';

import 'MyTextField.dart';
import 'SecondPage.dart';
import 'SubmitButton.dart';
import 'SubscriptionViewModelImpl.dart';

class EmailBox extends StatefulWidget {
  final TextEditingController controller;

  const EmailBox({Key key, this.controller}) : super(key: key);
  @override
  _EmailBoxState createState() => _EmailBoxState();
}

class _EmailBoxState extends State<EmailBox> {
  SubscriptionViewModel _viewModel = SubscriptionViewModelImpl();

  void nextPage() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SecondPage(text: widget.controller.text)));
  }

  @override
  void initState() {
    widget.controller.addListener(
        () => _viewModel.inputMailText.add(widget.controller.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 150, maxWidth: 600),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: StreamBuilder<String>(
              stream: _viewModel.outputErrorText,
              builder: (context, snapshot) {
                return MyTextField(
                    controller: widget.controller,
                    hintText: "Email",
                    errorText: snapshot.data ?? '');
              },
            ),
          ),
          StreamBuilder(
              stream: _viewModel.outputIsButtonEnabled,
              builder: (context, snapshot) {
                return SubmitButton(
                    enabled: snapshot.data ?? false, nextStep: nextPage);
              }),
        ],
      ),
    );
  }
}
